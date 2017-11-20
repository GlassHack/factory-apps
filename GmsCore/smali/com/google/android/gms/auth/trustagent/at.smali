.class public final Lcom/google/android/gms/auth/trustagent/at;
.super Lcom/google/android/gms/auth/trustagent/a;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/preference/PreferenceScreen;

.field private e:Lcom/google/android/gms/auth/trustagent/trustlet/x;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;-><init>()V

    .line 413
    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "getAliasName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    :goto_1
    const-string v1, "Coffee - TrustedDevicesFragment"

    const-string v2, "Failed to retrieve Bluetooth device alias name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/a;->b:Z

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 257
    const-string v1, "Coffee - TrustedDevicesFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A device was added to the trusted device list while another is pending, the old one "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will not be added."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    .line 315
    :cond_1
    :goto_0
    return v0

    .line 264
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_bluetooth_address"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "auth_trust_agent_pref_trusted_bluetooth_title"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    const/4 v1, 0x0

    .line 269
    iget-object v5, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_1

    .line 274
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 277
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    .line 278
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 280
    if-nez v1, :cond_3

    .line 281
    const-string v1, "Coffee - TrustedDevicesFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add Bluetooth device as trusted device, invalid Bluetooth address specified: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/at;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/at;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    const v1, 0x7f1001a2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Z)V

    .line 313
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/auth/trustagent/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/at;->c()V

    move v0, v2

    .line 315
    goto/16 :goto_0

    .line 291
    :cond_4
    const v1, 0x7f1001a4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    const-string v7, "auth_trust_agent_pref_trusted_bluetooth_title"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 301
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const v6, 0x7f1001b8

    invoke-virtual {p0, v6}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :goto_2
    const v1, 0x7f1001b2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/at;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/at;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .prologue
    .line 86
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "isConnected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    :goto_1
    const-string v1, "Coffee - TrustedDevicesFragment"

    const-string v2, "Failed to retrieve Bluetooth device connection state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/at;)Lcom/google/android/gms/auth/trustagent/trustlet/x;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->e:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gms/auth/trustagent/at;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/at;->c()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    const-string v1, "com.google.android.gms.auth.trustagent.ADD_DEVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    :goto_0
    return v0

    .line 240
    :cond_0
    const-string v1, "bluetooth_device_address"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-nez v1, :cond_1

    .line 244
    const-string v1, "Coffee - TrustedDevicesFragment"

    const-string v2, "Invalid intent to add Bluetooth device as trusted device, no address specified."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->a(Ljava/lang/String;)Z

    move-result v0

    .line 250
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/at;->c()V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/at;->a(Ljava/lang/String;)Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "auth_trust_agent_pref_trusted_bluetooth_address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/at;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->e:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->b()[Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_5

    aget-object v1, v2, v0

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "auth_trust_agent_pref_trusted_nfc_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/at;->c()V

    .line 173
    :cond_6
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 319
    const-string v0, "SELECTED_NFC_DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/at;->e:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    iget-object v2, v1, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)Z

    .line 323
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/a;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/at;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03003d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->c:Landroid/widget/TextView;

    .line 109
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->c:Landroid/widget/TextView;

    const v1, 0x7f1001ad

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    :goto_0
    const-string v0, "auth_trust_agent_pref_trusted_devices_list_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/at;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->d:Landroid/preference/PreferenceScreen;

    .line 119
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->e:Lcom/google/android/gms/auth/trustagent/trustlet/x;

    .line 120
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->c:Landroid/widget/TextView;

    const v1, 0x7f1001b9

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/trustagent/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 132
    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v2, 0x7f10018c

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/at;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v2, Lcom/google/android/gms/auth/trustagent/au;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/au;-><init>(Lcom/google/android/gms/auth/trustagent/at;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-object v0
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/a;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "Coffee - TrustedDevicesFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pending device to add to trusted device, ignored. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/at;->f:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public final onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/gms/auth/trustagent/ay;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/auth/trustagent/ay;-><init>(Lcom/google/android/gms/auth/trustagent/at;Landroid/preference/Preference;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/at;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Coffee - TrustedDevicesFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/ay;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    return v0
.end method
