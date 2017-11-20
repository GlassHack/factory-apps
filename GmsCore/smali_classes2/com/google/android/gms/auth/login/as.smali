.class public final Lcom/google/android/gms/auth/login/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field volatile b:Z

.field c:Lcom/google/android/gms/auth/login/at;

.field d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/Context;

.field private k:Landroid/view/inputmethod/InputMethodManager;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/accounts/AccountManager;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;Landroid/os/Handler;Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/as;->a:Z

    .line 70
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/as;->b:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/as;->d:Ljava/util/ArrayList;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/google/android/gms/auth/login/as;->l:I

    .line 90
    iget v0, p0, Lcom/google/android/gms/auth/login/as;->l:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You are using SDK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but the required minimum is: 17"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    .line 95
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/google/android/gms/auth/login/as;->k:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/as;->m:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/as;->f:Z

    .line 101
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/auth/login/as;->o:I

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/as;->p:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/google/android/gms/auth/login/as;->g:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/as;->e:Z

    .line 105
    iput-object p3, p0, Lcom/google/android/gms/auth/login/as;->h:Landroid/webkit/WebView;

    .line 106
    iput-object p4, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/as;->n:Landroid/accounts/AccountManager;

    .line 108
    const-string v0, "Android2JsBrdige"

    invoke-virtual {p5, v0}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/as;->q:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    .line 109
    return-void

    :cond_1
    move v0, v2

    .line 104
    goto :goto_0
.end method


# virtual methods
.method public final getAccounts()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 226
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->n:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 228
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 229
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAllowedDomains()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 127
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 254
    const-string v0, "0"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBuildVersionSdk()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/gms/auth/login/as;->l:I

    return v0
.end method

.method public final getDroidGuardResult(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/auth/login/as;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/auth/login/as;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/as;->getPlayServicesVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 275
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 276
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 281
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 282
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 283
    const-string v3, "dg_minutemaid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    return-void

    .line 287
    :catch_0
    move-exception v0

    const-string v0, "GLSActivity"

    const-string v1, "Invalid params given to get dg."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final getFactoryResetChallenges()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/google/android/gms/auth/b/a;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/a/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/d;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/a;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/a/a;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayServicesVersionCode()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 187
    const v0, 0x5d4044

    return v0
.end method

.method public final getSimSerial()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimState()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/gms/auth/login/as;->o:I

    return v0
.end method

.method public final goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method public final hasPhoneNumber()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/as;->e:Z

    return v0
.end method

.method public final hasTelephony()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/as;->f:Z

    return v0
.end method

.method public final hideKeyboard()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->k:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 208
    return-void
.end method

.method public final launchEmergencyDialer()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.android.phone/.EmergencyDialer"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public final notifyOnTermsOfServiceAccepted()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/as;->a:Z

    .line 348
    return-void
.end method

.method public final setBackButtonEnabled(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->c:Lcom/google/android/gms/auth/login/at;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->c:Lcom/google/android/gms/auth/login/at;

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/login/at;->a(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public final setNewAccountCreated()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/as;->b:Z

    .line 151
    return-void
.end method

.method public final showKeyboard()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->k:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->h:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 203
    return-void
.end method

.method public final showView()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->q:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "showView invoked."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 161
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method public final skipLogin()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 220
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/auth/login/as;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    return-void
.end method
