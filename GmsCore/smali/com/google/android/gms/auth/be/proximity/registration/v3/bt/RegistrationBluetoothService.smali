.class public Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/UUID;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/app/NotificationManager;

.field private e:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

.field private f:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field private g:Lcom/google/android/gms/auth/be/proximity/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    .line 50
    const-string v0, "29422880-D56D-11E3-9C1A-0800200C9A66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->b:Ljava/util/UUID;

    .line 53
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected constructor <init>(Landroid/app/NotificationManager;Lcom/google/android/gms/auth/gencode/authzen/server/api/f;Lcom/google/android/gms/auth/authzen/keyservice/g;Lcom/google/android/gms/auth/be/proximity/g;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->d:Landroid/app/NotificationManager;

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->e:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    .line 121
    iput-object p3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->f:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 122
    iput-object p4, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->g:Lcom/google/android/gms/auth/be/proximity/g;

    .line 123
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "bluetooth_mac_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v0, Lcom/google/m/b/a/d/r;

    invoke-direct {v0}, Lcom/google/m/b/a/d/r;-><init>()V

    array-length v2, p2

    invoke-virtual {v0, p2, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/r;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-boolean v2, v0, Lcom/google/m/b/a/d/r;->a:Z

    if-nez v2, :cond_0

    .line 96
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Missing Bluetooth address in DeviceProximityCallback."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Unable to decode the proto."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 92
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, v0, Lcom/google/m/b/a/d/r;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->d:Landroid/app/NotificationManager;

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/app/bb;

    invoke-direct {v3, p0}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 250
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/e;->a(Ljava/io/InputStream;)Lcom/google/android/gms/auth/be/proximity/registration/v3/d;

    move-result-object v2

    .line 261
    invoke-virtual {p2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/g;->a(Ljava/io/OutputStream;)Lcom/google/android/gms/auth/be/proximity/registration/v3/f;

    move-result-object v3

    .line 262
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Connection to %s created."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    new-instance v4, Lcom/google/android/gms/auth/be/proximity/registration/v3/a;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/google/android/d/a/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v4, v5, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a(Lcom/google/android/gms/auth/be/proximity/registration/v3/h;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->a()Lcom/google/android/gms/auth/be/proximity/registration/v3/c;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 285
    if-nez v1, :cond_1

    .line 286
    :try_start_3
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Failed to read message via Bluetooth."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 310
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 313
    :goto_2
    return v0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to create connection."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 271
    :cond_0
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/google/android/d/a/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 272
    :catch_1
    move-exception v1

    .line 273
    :try_start_7
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Failed to write message."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 274
    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 310
    :goto_3
    :try_start_9
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .line 280
    :catch_3
    move-exception v1

    .line 281
    :try_start_a
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Error when reading message via Bluetooth."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 282
    :try_start_b
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 310
    :goto_4
    :try_start_c
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2

    .line 290
    :cond_1
    :try_start_d
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    :try_start_e
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a(Lcom/google/android/gms/auth/be/proximity/registration/v3/h;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 302
    :goto_5
    :try_start_f
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 310
    :goto_6
    :try_start_10
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    .line 296
    :cond_2
    :try_start_11
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a(Lcom/google/android/gms/auth/be/proximity/registration/v3/h;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_5

    .line 299
    :catch_6
    move-exception v1

    .line 300
    :try_start_12
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Failed to write message."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_5

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    :try_start_13
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/d;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 310
    :goto_7
    :try_start_14
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 313
    :goto_8
    throw v0

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto/16 :goto_1

    :catch_a
    move-exception v1

    goto/16 :goto_2

    :catch_b
    move-exception v1

    goto :goto_6

    :catch_c
    move-exception v1

    goto :goto_7

    :catch_d
    move-exception v1

    goto :goto_8
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->f:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v1, "device_key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/m/b/a/d/j;->a(Ljava/security/PublicKey;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 330
    new-instance v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;

    invoke-direct {v1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->a:Z

    iget-object v3, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->c:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v0, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->c:Ljava/util/Set;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ToggleEasyUnlockRequestEntity;

    iget-object v3, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->c:Ljava/util/Set;

    iget-boolean v4, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->a:Z

    iget-object v1, v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/aw;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/auth/gencode/authzen/server/api/ToggleEasyUnlockRequestEntity;-><init>(Ljava/util/Set;ZLjava/lang/String;)V

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/ToggleEasyUnlockRequestEntity;

    .line 337
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->e:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    new-instance v4, Lcom/google/android/gms/common/server/ClientContext;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, p1, p1, v5}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/auth/b/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    const-string v1, "deviceSync/toggleeasyunlock"

    iget-object v3, v3, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;->a:Lcom/google/android/gms/common/server/g;

    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/d/aa; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->g:Lcom/google/android/gms/auth/be/proximity/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/proximity/g;->a(Ljava/lang/String;)Z

    move-result v0

    .line 345
    if-nez v0, :cond_0

    .line 346
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Failed to sync device state with server."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    :goto_1
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to get the public key of current device."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 327
    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    :goto_2
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to make the API call to toggle EasyUnlock."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 341
    goto :goto_0

    .line 339
    :catch_2
    move-exception v0

    goto :goto_2

    .line 325
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 129
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->d:Landroid/app/NotificationManager;

    .line 131
    new-instance v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    new-instance v2, Lcom/google/android/gms/common/server/g;

    sget-object v0, Lcom/google/android/gms/auth/b/a;->S:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "/cryptauth/v1/"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/common/server/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;-><init>(Lcom/google/android/gms/common/server/g;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->e:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    .line 139
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->f:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 140
    invoke-static {p0}, Lcom/google/android/gms/auth/be/proximity/g;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->g:Lcom/google/android/gms/auth/be/proximity/g;

    .line 141
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "bluetooth_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty bluetooth mac address."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    if-nez v2, :cond_1

    .line 155
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty account name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Proximity feature is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v0

    .line 165
    if-nez v0, :cond_3

    .line 166
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Bluetooth is not enabled on this device, trying to start it."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p0, v2, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothStartService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 176
    :cond_4
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 177
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Bluetooth address received is invalid: \'%s\'."

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 187
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->b:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a(Ljava/util/UUID;)Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    move-result-object v3

    .line 188
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Socket to %s created."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a()V

    .line 198
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Connected to %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    const v0, 0x7f100160

    const v4, 0x7f10015f

    :try_start_2
    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(II)V

    .line 209
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;Ljava/lang/String;)Z

    move-result v0

    .line 210
    if-nez v0, :cond_6

    .line 211
    const v0, 0x7f10015e

    const v1, 0x7f10015d

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Failed to close the socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 190
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to create RFCOMM socket to device %s."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Socket failed to connect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 217
    :cond_6
    const v0, 0x7f10015c

    const v1, 0x7f10015b

    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 223
    :catch_3
    move-exception v0

    .line 224
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Failed to close the socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    :try_start_6
    invoke-virtual {v3}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 225
    :goto_1
    throw v0

    .line 223
    :catch_4
    move-exception v1

    .line 224
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v3/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the socket."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
