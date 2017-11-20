.class public final enum Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;
.super Ljava/lang/Enum;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/LinkSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AndroidPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum CHROME_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum CHROME_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum GOOGLE_PLAY_TOS_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum GOOGLE_PLUS_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

.field public static final enum GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;


# instance fields
.field private final mFailUrl:Ljava/lang/String;

.field private final mFallbackUrl:Ljava/lang/String;

.field private final mGservicesProperty:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private final mTitleResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v1, "GOOGLE_TERMS_OF_SERVICE"

    const v3, 0x7f0700be

    const-string v4, "setup_google_tos_url"

    const-string v5, "http://www.google.com/intl/%y_%z/mobile/android/google-tos.html"

    const-string v6, "file:///android_asset/html/en_us/google-tos.html"

    const-string v7, "tos"

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 88
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "GOOGLE_PRIVACY_POLICY"

    const v6, 0x7f0700bf

    const-string v7, "setup_google_privacy_url"

    const-string v8, "http://www.google.com/intl/%s/mobile/android/google-privacy.html"

    const-string v9, "file:///android_asset/html/en_us/google-privacy.html"

    const-string v10, "google_privacy"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 95
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "GOOGLE_PLUS_PRIVACY_POLICY"

    const v6, 0x7f0700c0

    const-string v7, "setup_google_privacy_url"

    const-string v8, "http://www.google.com/intl/%s/+/policy/"

    const-string v9, "file:///android_asset/html/en_us/google-privacy.html"

    const-string v10, "google_plus_privacy"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLUS_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 102
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "ANDROID_PRIVACY_POLICY"

    const v6, 0x7f0700bd

    const-string v7, "setup_android_privacy_url"

    const-string v8, "http://www.google.com/intl/%s/mobile/android/privacy.html"

    const-string v9, "file:///android_asset/html/en_us/android-privacy.html"

    const-string v10, "android_privacy"

    move v5, v13

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 109
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "GOOGLE_PLAY_TOS_POLICY"

    const v6, 0x7f0700c1

    const-string v7, "setup_google_play_tos_url"

    const-string v8, "http://play.google.com/intl/%y_%z/about/play-terms.html"

    const-string v9, "file:///android_asset/html/en_us/google-play-tos.html"

    const-string v10, "play_tos"

    move v5, v14

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLAY_TOS_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 116
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "CHROME_TERMS_OF_SERVICE"

    const/4 v5, 0x5

    const v6, 0x7f0700c2

    const-string v7, "setup_chrome_tos_url"

    const-string v8, "http://www.google.com/chrome/intl/%y_%z/eula_text.html"

    const-string v9, "file:///android_asset/html/en_us/chrome-tos.html"

    const-string v10, "chrome_tos"

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 123
    new-instance v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    const-string v4, "CHROME_PRIVACY_POLICY"

    const/4 v5, 0x6

    const v6, 0x7f0700c3

    const-string v7, "setup_chrome_privacy_url"

    const-string v8, " http://www.google.com/chrome/intl/%y_%z/privacy.html"

    const-string v9, "file:///android_asset/html/en_us/chrome-privacy.html"

    const-string v10, "chrome_privacy"

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    sget-object v1, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLUS_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->ANDROID_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->GOOGLE_PLAY_TOS_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->CHROME_PRIVACY_POLICY:Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->$VALUES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "titleId"    # I
    .param p4, "gsProperty"    # Ljava/lang/String;
    .param p5, "fallback"    # Ljava/lang/String;
    .param p6, "fail"    # Ljava/lang/String;
    .param p7, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mTitleResourceId:I

    .line 148
    iput-object p4, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 150
    iput-object p6, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    .line 151
    iput-object p7, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mTag:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->$VALUES:[Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    invoke-virtual {v0}, [Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    return-object v0
.end method


# virtual methods
.method public getPrettyUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    .line 159
    iget-object v6, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const-string v6, "GLSActivity"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 163
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not in gservices, using: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 168
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    const-string v6, "GLSActivity"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    const-string v6, "GLSActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not set, using: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    iget-object v5, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mFailUrl:Ljava/lang/String;

    .line 176
    :cond_3
    const-string v6, "%m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 179
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 180
    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v6, :cond_9

    .line 181
    const-string v6, "%m"

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 191
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_4
    :goto_0
    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 192
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 193
    .local v1, "locale":Ljava/util/Locale;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "tmp":Ljava/lang/String;
    const-string v6, "%s"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_5
    const-string v6, "%y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 201
    .restart local v1    # "locale":Ljava/util/Locale;
    const-string v6, "%y"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_6
    const-string v6, "%z"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 209
    :try_start_1
    const-string v6, "phone"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 212
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 213
    .restart local v0    # "config":Landroid/content/res/Configuration;
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 215
    if-eqz v3, :cond_a

    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v6, :cond_a

    .line 216
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "simCountryIso":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 218
    const-string v2, "us"

    .line 220
    :cond_7
    const-string v6, "%z"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 234
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "simCountryIso":Ljava/lang/String;
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_1
    return-object v5

    .line 185
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_9
    :try_start_2
    const-string v6, "%m"

    const-string v7, "%s"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 225
    .restart local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_a
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 226
    .restart local v1    # "locale":Ljava/util/Locale;
    const-string v6, "%z"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_1

    .line 229
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 187
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;->mTitleResourceId:I

    return v0
.end method
