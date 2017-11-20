.class public final Lcom/google/glass/voice/GlassRecognizerIntent;
.super Ljava/lang/Object;
.source "GlassRecognizerIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;,
        Lcom/google/glass/voice/GlassRecognizerIntent$GlassInputType;
    }
.end annotation


# static fields
.field public static final EXTRA_ALLOW_SCREEN_OFF:Ljava/lang/String; = "allowScreenOff"

.field public static final EXTRA_CUSTOM_MENU_CONFIRMED:Ljava/lang/String; = "custom_menu_confirmed"

.field public static final EXTRA_CUSTOM_MENU_PENDING:Ljava/lang/String; = "custom_menu_pending"

.field public static final EXTRA_EMBEDDED_RECOGNITION:Ljava/lang/String; = "embeddedRecognition"

.field public static final EXTRA_ENABLE_OPEN_ENDED_INPUT_EVENTS:Ljava/lang/String; = "enableOpenEndedInputEvents"

.field public static final EXTRA_FORCED_TIMEOUT_MS:Ljava/lang/String; = "forcedTimeoutMs"

.field public static final EXTRA_INPUT_TYPE:Ljava/lang/String; = "inputType"

.field public static final EXTRA_LISTENER_TAG:Ljava/lang/String; = "listenerTag"

.field public static final EXTRA_NO_SPEECH_DETECTED_TIMEOUT_MS:Ljava/lang/String; = "noSpeechDetectedTimeoutMs"

.field public static final EXTRA_OPEN_ENDED_INPUT_EVENT:Ljava/lang/String; = "openEndedInputEvent"

.field public static final EXTRA_PHRASES:Ljava/lang/String; = "phrases"

.field public static final EXTRA_VOICE_COMMANDS:Ljava/lang/String; = "extraVoiceCommands"

.field public static final EXTRA_VOICE_CONFIG:Ljava/lang/String; = "voiceConfig"

.field public static final EXTRA_WANT_AUDIO_DATA:Ljava/lang/String; = "wantAudioData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
