import '../constants/enums/envtype.dart';

// set Env type
const EnvType env = EnvType.local;

bool enableConsoleLog = env != EnvType.production;
bool enableLocalLog = env != EnvType.production;

const String appTitle = '';
const String appTitleShort = '';
