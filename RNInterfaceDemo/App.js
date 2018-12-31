import React, { Component } from "react";
import { NativeModules, TouchableOpacity, View, Text } from "react-native";

const { actionCancelTapped } = NativeModules.RNInterface;
class App extends Component {
  //   constructor(props) {
  //     super(props);
  //     this.state = {};
  //   }
  render() {
    console.log();
    return (
      <View style={{justifyContent: 'center', alignItems: 'center', flex: 1 }}>
        <TouchableOpacity
          onPress={() => {
            actionCancelTapped("Called from react-native classes");
          }}
        >
          <Text>Touch Here</Text>
        </TouchableOpacity>
      </View>
    );
  }
}

export default App;
