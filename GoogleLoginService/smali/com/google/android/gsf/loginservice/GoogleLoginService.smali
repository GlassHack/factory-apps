.class public Lcom/google/android/gsf/loginservice/GoogleLoginService;
.super Landroid/app/Service;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;,
        Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;
    }
.end annotation


# static fields
.field public static final KEY_CALLER_UID:Ljava/lang/String;

.field private static final LOG_PREFIX:Ljava/lang/String;

.field private static OAUTH_PREFIX:Ljava/lang/String;

.field static notifications:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

.field mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->LOG_PREFIX:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_CALLER_UID:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->KEY_CALLER_UID:Ljava/lang/String;

    .line 155
    const-string v0, "oauth:"

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 660
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/loginservice/GoogleLoginService;
    .param p1, "x1"    # Landroid/accounts/AccountManager;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/loginservice/GoogleLoginService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/accounts/AccountManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/loginservice/GoogleLoginService;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V

    return-void
.end method

.method private accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;

    .prologue
    .line 191
    const/4 v9, 0x1

    .line 193
    .local v9, "hasFeatures":Z
    move-object/from16 v5, p3

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v7, v5, v11

    .line 194
    .local v7, "feature":Ljava/lang/String;
    const-string v15, "youtubelinked"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 195
    const/4 v9, 0x1

    .line 237
    .end local v7    # "feature":Ljava/lang/String;
    .end local v11    # "i$":I
    :cond_0
    :goto_1
    return v9

    .line 197
    .restart local v7    # "feature":Ljava/lang/String;
    .restart local v11    # "i$":I
    :cond_1
    const-string v15, "hosted_or_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 198
    const/4 v9, 0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    const-string v15, "google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 201
    const/4 v9, 0x1

    .line 202
    goto :goto_1

    .line 203
    :cond_3
    const-string v15, "legacy_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 205
    const/4 v9, 0x1

    .line 206
    goto :goto_1

    .line 207
    :cond_4
    const-string v15, "legacy_hosted_or_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 208
    const/4 v9, 0x1

    .line 209
    goto :goto_1

    .line 210
    :cond_5
    const-string v15, "service_"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 211
    const-string v15, "service_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, "serviceName":Ljava/lang/String;
    sget-object v15, Lcom/google/android/gsf/loginservice/ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v15}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "accountServices":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 216
    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "accountServicesArray":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 218
    .local v8, "found":Z
    move-object v6, v4

    .local v6, "arr$":[Ljava/lang/String;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2
    if-ge v10, v13, :cond_6

    aget-object v2, v6, v10

    .line 219
    .local v2, "accountService":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 220
    const/4 v8, 0x1

    .line 224
    .end local v2    # "accountService":Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_9

    .line 225
    const/4 v9, 0x0

    .line 226
    goto :goto_1

    .line 218
    .restart local v2    # "accountService":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 233
    .end local v2    # "accountService":Ljava/lang/String;
    .end local v3    # "accountServices":Ljava/lang/String;
    .end local v4    # "accountServicesArray":[Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "found":Z
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "serviceName":Ljava/lang/String;
    .restart local v11    # "i$":I
    :cond_8
    const/4 v9, 0x0

    .line 234
    goto :goto_1

    .line 193
    .end local v11    # "i$":I
    .restart local v3    # "accountServices":Ljava/lang/String;
    .restart local v14    # "serviceName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0
.end method

.method public static cancelDevicePolicyNotification(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1033
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1034
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1035
    return-void
.end method

.method public static cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "nid":Ljava/lang/String;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1027
    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    return-void
.end method

.method static cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "nid":Ljava/lang/String;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1020
    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    return-void
.end method

.method private checkBinderPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1080
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1088
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPasswordPermission()V
    .locals 3

    .prologue
    .line 1064
    const-string v1, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "GLSActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1072
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 2
    .param p0, "accountManager"    # Landroid/accounts/AccountManager;
    .param p1, "requireGoogle"    # Z

    .prologue
    .line 648
    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 650
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 651
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 653
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authTokenType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1142
    sget-object v5, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-object v4

    .line 1146
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    .local v2, "permissionName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1148
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1149
    .local v0, "info":Landroid/content/pm/PermissionInfo;
    iget v5, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-eqz v5, :cond_2

    .line 1150
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1152
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1153
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1156
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 1157
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1159
    :cond_3
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1160
    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1163
    .end local v0    # "info":Landroid/content/pm/PermissionInfo;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1175
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 1176
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1180
    invoke-static {p2}, Lcom/google/android/gsf/loginservice/GLSHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1181
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    .line 167
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    .line 168
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serviceFlags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x3

    .line 180
    if-nez p1, :cond_0

    .line 186
    :cond_0
    return v0
.end method
