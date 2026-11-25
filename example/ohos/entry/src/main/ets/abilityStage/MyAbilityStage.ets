import AbilityStage from '@ohos.app.ability.AbilityStage';
import { UMAnalytics } from 'umeng_common_sdk';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { BusinessError } from '@ohos.base';
import abilityAccessCtrl from '@ohos.abilityAccessCtrl';
import bundleManager from '@ohos.bundle.bundleManager';
import { common } from '@kit.AbilityKit';


UMAnalytics.setLogEnabled(true);

export default class MyAbilityStage extends AbilityStage {
  onCreate() {
    UMAnalytics.preInit({
      context: this.context.getApplicationContext(),
      plugins: [new UMAnalytics.InternalPlugin({})],
      disableScreen: true,
      disablePlmn: true,
      disableOsVersion: true,
      disableDeviceModel: true,
    });
    UMAnalytics.init();
  }
}