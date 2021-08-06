import React, {useState, useEffect} from 'react';
import {
  View,
  Text,
  Dimensions,
  ImageBackground,
  SafeAreaView,
  Image,
  TouchableWithoutFeedback,
  ScrollView,
  TouchableOpacity,
  TouchableNativeFeedback,
  Linking,
  RefreshControl,
} from 'react-native';
import {colors} from '../../utils/colors';
import {fonts} from '../../utils/fonts';
import {storeData, getData} from '../../utils/localStorage';
import {Icon} from 'react-native-elements';
import MyCarouser from '../../components/MyCarouser';
import MyTerbaik from '../../components/MyTerbaik';
import axios from 'axios';
import messaging from '@react-native-firebase/messaging';
import 'intl';
import 'intl/locale-data/jsonp/en';

const wait = timeout => {
  return new Promise(resolve => {
    setTimeout(resolve, timeout);
  });
};

export default function Home({navigation}) {
  const [user, setUser] = useState([]);
  const [token, setToken] = useState('');
  const [point, setPoint] = useState(0);

  const [company, setCompany] = useState({});

  const [refreshing, setRefreshing] = React.useState(false);

  const getDataPoint = () => {
    getData('user').then(res => {
      setUser(res);
      axios
        .post('https://zavalabs.com/kenaralaundry/api/point.php', {
          id_member: res.id,
        })
        .then(respoint => {
          setPoint(respoint.data);
          console.log('get apoint', respoint.data);
        });

      getData('token').then(res => {
        console.log('data token,', res);
        setToken(res.token);
        axios
          .post('https://zavalabs.com/kenaralaundry/api/update_token.php', {
            id_member: user.id,
            token: res.token,
          })
          .then(res => {
            console.log('update token', res);
          });
      });
    });
  };

  const GetCompany = () => {
    axios
      .get('https://zavalabs.com/kenaralaundry/api/company.php')
      .then(res => {
        console.log('data company', res.data);
        setCompany(res.data);
      });
  };
  const onRefresh = React.useCallback(() => {
    setRefreshing(true);
    getDataPoint();
    wait(2000).then(() => {
      setRefreshing(false);
    });
  }, []);

  messaging().onMessage(async remoteMessage => {
    // Alert.alert('A new FCM message arrived!', JSON.stringify(remoteMessage));
    const json = JSON.stringify(remoteMessage);
    const obj = JSON.parse(json);
    getDataPoint();
  });

  useEffect(() => {
    getDataPoint();
    GetCompany();
  }, []);

  const windowWidth = Dimensions.get('window').width;
  const windowHeight = Dimensions.get('window').height;
  const ratio = 192 / 108;
  const _renderItem = ({item, index}) => {
    return (
      <Image
        resizeMode="contain"
        source={{uri: item.image}}
        style={{
          width: windowWidth,
          height: Math.round((windowWidth * 9) / 16),
        }}
      />
    );
  };
  return (
    <ImageBackground
      style={{
        flex: 1,
      }}>
      <ScrollView
        refreshControl={
          <RefreshControl
            refreshing={refreshing}
            onRefresh={onRefresh}
            colors={[colors.primary]}
          />
        }>
        <View
          style={{
            height: windowHeight / 9,
            padding: 10,
            backgroundColor: colors.primary,
            flexDirection: 'row',
            borderBottomLeftRadius: 10,
            borderBottomRightRadius: 10,
          }}>
          <View style={{flex: 1, paddingTop: 15}}>
            <Text
              style={{
                fontSize: windowWidth / 25,
                color: colors.black,
                fontFamily: fonts.secondary[400],
              }}>
              Selamat datang,
            </Text>
            <Text
              style={{
                fontSize: windowWidth / 25,
                color: colors.black,
                fontFamily: fonts.secondary[600],
              }}>
              {user.nama_lengkap}
            </Text>
          </View>
          <View
            style={{
              flexDirection: 'row',
              justifyContent: 'flex-end',
              flex: 1,
            }}>
            <TouchableOpacity
              onPress={() =>
                Linking.openURL(
                  'https://api.whatsapp.com/send/?phone=' + company.tlp,
                )
              }
              style={{
                padding: 10,
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <Icon
                type="ionicon"
                name="logo-whatsapp"
                color={colors.black}
                size={windowWidth / 12}
              />
            </TouchableOpacity>

            <TouchableOpacity
              onPress={() => navigation.navigate('Cart')}
              style={{
                padding: 10,
                justifyContent: 'center',
                alignItems: 'center',
              }}>
              <Icon
                type="ionicon"
                name="cart-outline"
                color={colors.black}
                size={windowWidth / 12}
              />
            </TouchableOpacity>
          </View>
        </View>

        {/* bagian untuk point dan redeem */}

        <View
          style={{
            height: windowHeight / 13,
            flexDirection: 'row',
            padding: 10,
            backgroundColor: colors.white,
            justifyContent: 'space-between',
          }}>
          <TouchableOpacity
            style={{
              flex: 1,
              marginHorizontal: 5,
              justifyContent: 'flex-start',
              alignItems: 'center',
              flexDirection: 'row',
              // borderWidth: 1,
              borderRadius: 10,
              borderColor: colors.primary,
              backgroundColor: colors.white,
            }}>
            <Icon
              type="ionicon"
              name="ribbon-outline"
              color={colors.black}
              size={windowWidth / 13}
            />
            <View style={{marginLeft: 5}}>
              <Text
                style={{
                  fontSize: windowWidth / 40,
                  color: colors.black,
                  fontFamily: fonts.secondary[400],
                }}>
                Point
              </Text>
              <Text
                style={{
                  fontSize: windowWidth / 35,
                  color: colors.black,
                  fontFamily: fonts.secondary[600],
                }}>
                {new Intl.NumberFormat().format(point)}
              </Text>
            </View>
          </TouchableOpacity>
          <TouchableOpacity
            onPress={() => navigation.navigate('Hadiah')}
            style={{
              flex: 1,
              marginHorizontal: 5,
              justifyContent: 'center',
              alignItems: 'center',
              flexDirection: 'row',
              borderWidth: 1,
              borderRadius: 10,
              borderColor: colors.black,
              backgroundColor: colors.white,
              shadowColor: colors.primary,
              shadowColor: '#000',
              shadowOffset: {
                width: -10,
                height: 2,
              },
              shadowOpacity: 0.44,
              shadowRadius: 5.32,
              elevation: 2,
            }}>
            <Icon
              type="ionicon"
              name="gift-outline"
              color={colors.black}
              size={windowWidth / 13}
            />
            <View style={{marginLeft: 5}}>
              <Text
                style={{
                  fontSize: windowWidth / 40,
                  color: colors.black,
                  fontFamily: fonts.secondary[400],
                }}>
                Daftar
              </Text>
              <Text
                style={{
                  fontSize: windowWidth / 35,
                  color: colors.black,
                  fontFamily: fonts.secondary[600],
                }}>
                Hadiah
              </Text>
            </View>
          </TouchableOpacity>
        </View>

        <View
          style={{
            borderTopLeftRadius: 10,
            borderTopRightRadius: 10,
            paddingTop: 20,
            paddingHorizontal: 10,
            backgroundColor: colors.primary,
            paddingBottom: 20,
          }}>
          <TouchableNativeFeedback
            onPress={() => navigation.navigate('Search')}>
            <View
              style={{
                flex: 1,
                paddingLeft: 20,
                borderWidth: 1,
                height: 45,
                borderRadius: 10,
                borderColor: colors.black,
                color: colors.black,
                flexDirection: 'row',
                fontSize: 18,
                justifyContent: 'center',
              }}>
              <View
                style={{
                  flex: 2,
                  justifyContent: 'center',
                }}>
                <Text
                  style={{
                    fontFamily: 'Montserrat-Light',
                    fontSize: 18,
                    color: colors.black,
                  }}>
                  Cari Layanan...
                </Text>
              </View>
              <View
                style={{
                  flex: 1,
                  justifyContent: 'center',
                  alignItems: 'flex-end',
                  paddingRight: 20,
                }}>
                <Icon
                  type="font-awesome"
                  name="search"
                  color={colors.black}
                  size={18}
                />
              </View>
            </View>
          </TouchableNativeFeedback>
        </View>

        <MyCarouser />

        {/* <MyKategori /> */}
        <MyTerbaik />
      </ScrollView>
    </ImageBackground>
  );
}
