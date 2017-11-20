.class public interface abstract Lcom/google/glass/auth/AuthUtils;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/auth/AuthUtils$AddAccountListener;
    }
.end annotation


# static fields
.field public static final ADD_ACCOUNT_TIMEOUT_MS:J = 0x1d4c0L

.field public static final AUTH_TOKEN_HEADER:Ljava/lang/String; = "Authorization"

.field public static final AUTH_TOKEN_SPEECH_PERSONALIZATION:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/speech/personalization"

.field public static final AUTH_TOKEN_TYPE_DEFAULT:Ljava/lang/String; = "android"

.field public static final AUTH_TOKEN_TYPE_SEARCH:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/googlenow"

.field public static final AUTH_TOKEN_VIDEO_CALLS:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/glass.hangouts"

.field public static final AUTH_TOKEN_WEB_HISTORY:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/webhistory"

.field public static final DEVICE_HEADER_PREFIX:Ljava/lang/String; = "X-Goog-Device-Info-"

.field public static final DEVICE_ID_HEADER:Ljava/lang/String; = "X-Goog-Device-Info-Device-Id"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEVICE_SERIAL_NUMBER_HEADER:Ljava/lang/String; = "X-Goog-Device-Info-Serial-Number"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final GOOGLE_LOGIN_AUTH_TOKEN_PREFIX:Ljava/lang/String; = "GoogleLogin auth="

.field public static final LOGIN_OPTION_PASSWORD:Ljava/lang/String; = "password"

.field public static final LOGIN_OPTION_USERNAME:Ljava/lang/String; = "username"

.field public static final OAUTH_SCOPE_SEARCH:Ljava/lang/String; = "https://www.googleapis.com/auth/googlenow"

.field public static final OAUTH_SCOPE_SPEECH_PERSONALIZATION:Ljava/lang/String; = "https://www.googleapis.com/auth/speech/personalization"

.field public static final OAUTH_SCOPE_VIDEO_CALLS:Ljava/lang/String; = "https://www.googleapis.com/auth/glass.hangouts"

.field public static final OAUTH_SCOPE_WEB_HISTORY:Ljava/lang/String; = "https://www.googleapis.com/auth/webhistory"


# virtual methods
.method public abstract addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z
.end method

.method public abstract createAuthHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteAllAccounts(Ljava/lang/Runnable;)V
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getGoogleAccount()Landroid/accounts/Account;
.end method

.method public abstract invalidateAuthToken()V
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method

.method public abstract restartSetupProcess(Z)V
.end method

.method public abstract updateCredentials(Landroid/accounts/AccountManagerCallback;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method
