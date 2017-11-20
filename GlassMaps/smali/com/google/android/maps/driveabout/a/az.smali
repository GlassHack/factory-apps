.class final Lcom/google/android/maps/driveabout/a/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ay;


# instance fields
.field private a:Landroid/speech/tts/TextToSpeech;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/az;->b:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static a(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    const-string v1, "TextToSpeechProxy"

    const-string v2, "locale.getLanguage() == null locale="

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    const-string v1, "TextToSpeechProxy"

    const-string v2, "locale.getISO3Language() == null locale="

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 180
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static b(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/a/az;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/a/az;->c(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    const-string v1, "LocalOnly"

    .line 128
    if-nez p0, :cond_0

    .line 129
    const-string v0, "TextToSpeechProxy"

    const-string v2, "ttsLocale == null"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 134
    const-string v2, "TextToSpeechProxy"

    const-string v3, "Unexpected. ttsLocale.getLanguage() == null "

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 135
    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/az;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    .line 140
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/az;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method private static c(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    const-string v1, "utteranceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "com.google.android.tts:Mode"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/az;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/a/az;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "TextToSpeechProxy"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TTS synthesis parameters are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1, v0, p3}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 80
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/az;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/maps/driveabout/a/az;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const/4 v0, -0x2

    .line 83
    :cond_0
    return v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service not registered: android.speech.tts.TextToSpeech"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    throw v0
.end method

.method public final a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/az;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    .line 50
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    .line 218
    :try_start_0
    const-string v2, "getDefaultEngine"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/az;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 231
    :goto_0
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
