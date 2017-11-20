.class public Lcom/google/android/speech/params/NetworkRequestProducerParams;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParams.java"


# instance fields
.field private final mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

.field private final mClockworkParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

.field private final mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

.field private final mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

.field private final mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/params/DeviceParams;Lcom/google/android/speech/context/SpeechContext;)V
    .locals 0
    .param p1, "authTokenHelper"    # Lcom/google/android/speech/helper/AuthTokenHelper;
    .param p2, "networkInformation"    # Lcom/google/android/speech/utils/NetworkInformation;
    .param p5, "locationHelper"    # Lcom/google/android/speech/helper/SpeechLocationHelper;
    .param p6, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p7, "deviceParams"    # Lcom/google/android/speech/params/DeviceParams;
    .param p8, "speechContext"    # Lcom/google/android/speech/context/SpeechContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/AuthTokenHelper;",
            "Lcom/google/android/speech/utils/NetworkInformation;",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;",
            "Lcom/google/android/speech/helper/SpeechLocationHelper;",
            "Lcom/google/android/speech/SpeechSettings;",
            "Lcom/google/android/speech/params/DeviceParams;",
            "Lcom/google/android/speech/context/SpeechContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "pinholeParamsBuilder":Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;, "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder<Lcom/google/speech/s3/PinholeStream$PinholeParams;>;"
    .local p4, "clockworkParamsBuilder":Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;, "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder<Lcom/google/speech/s3/Clockwork$ClockworkParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    .line 34
    iput-object p2, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 35
    iput-object p3, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    .line 36
    iput-object p4, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mClockworkParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    .line 37
    iput-object p5, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 38
    iput-object p6, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 39
    iput-object p7, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 40
    iput-object p8, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    .line 41
    return-void
.end method


# virtual methods
.method public getAuthTokenHelper()Lcom/google/android/speech/helper/AuthTokenHelper;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    return-object v0
.end method

.method public getClockworkParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/Clockwork$ClockworkParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mClockworkParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    return-object v0
.end method

.method public getDeviceParams()Lcom/google/android/speech/params/DeviceParams;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    return-object v0
.end method

.method public getLocationHelper()Lcom/google/android/speech/helper/SpeechLocationHelper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    return-object v0
.end method

.method public getNetworkInformation()Lcom/google/android/speech/utils/NetworkInformation;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    return-object v0
.end method

.method public getPinholeParamsBuilder()Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mPinholeParamsBuilder:Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;

    return-object v0
.end method

.method public getSpeechContext()Lcom/google/android/speech/context/SpeechContext;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    return-object v0
.end method

.method public getSpeechSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/speech/params/NetworkRequestProducerParams;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
