import React, { Component } from 'react';
import {
  View,
  Text,
  ListView,
} from '@hippy/react';
import SafeAreaView from './shared/SafeAreaView';
import style from './style';


export default class App extends Component {
  constructor(props) {
    super(props);
  }

  getRowType(item) {
    return item.rowType || 0;
  }

  getRowKey(index) {
    return index;
  }

  clickCb() {
    console.log('click');
  }


  renderRow(item) {
    let result = '';
    switch (item.rowType) {
      case 1:
        result = (
          <View style={style.section_tit}>
            <View style={style.section_tit_left}>
              <Text style={[style.section_tit_txt]}>歌单达人投稿周排行</Text>
              <View onClick={this.clickCb.bind(this)} accessible={true} accessibilityLabel={'歌单达人投稿周排行规则按钮'}>
                <Text style={{ color: 'green' }}>规则</Text>
              </View>
            </View>
            <View
              style={style.section_tit_right}
              onClick={this.clickCb.bind(this)}
              accessible={true}
              accessibilityLabel={'更多按钮'}
            >
              <Text style={[style.section_tit_more]}>更多</Text>

            </View>
          </View>
        );
        break;
      default:
        break;
    }
    return result;
  }

  render() {
    const list = [{ rowType: 1 }, { rowType: 1 }];
    return (
      <SafeAreaView statusBarColor="#4c9afa">
        <View style={[style.container]}>
          <ListView
            style={{ flex: 1 }}
            numberOfRows={list.length}
            renderRow={index => this.renderRow(list[index])}
            getRowType={index => this.getRowType(list[index])}
            getRowKey={index => this.getRowKey(index)}
            showScrollIndicator={false}
          />
        </View>
      </SafeAreaView>
    );
  }
}
