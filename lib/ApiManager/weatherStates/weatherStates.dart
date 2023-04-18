abstract class WeatherStates{}

class InitialState extends WeatherStates{}
class GetWeatherDataSuccessState extends WeatherStates{}
class GetWeatherDataLoadingState extends WeatherStates{}
class GetWeatherDataFailureState extends WeatherStates{}