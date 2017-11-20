.class public Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/UUID;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    .line 32
    const-string v0, "29422880-D56D-11E3-9C1A-0800200C9A66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->b:Ljava/util/UUID;

    .line 35
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "registration_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->d:Landroid/app/NotificationManager;

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/app/bb;

    invoke-direct {v3, p0}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 156
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    :try_start_0
    new-instance v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->b()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;-><init>(Ljava/io/InputStream;)V

    .line 167
    new-instance v3, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->c()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;-><init>(Ljava/io/OutputStream;)V

    .line 168
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Connection to %s created."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/registration/v1/a;

    move-result-object v4

    invoke-virtual {v4, p3, v2, v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/a;->a(Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;Lcom/google/android/gms/auth/be/proximity/registration/v1/d;Lcom/google/android/gms/auth/be/proximity/registration/v1/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/auth/firstparty/proximity/g; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    :goto_1
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to create connection."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 171
    goto :goto_1

    .line 190
    :catch_1
    move-exception v1

    .line 191
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Failed to close the reader."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    :catch_2
    move-exception v1

    .line 196
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the writer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 181
    :catch_3
    move-exception v0

    .line 182
    :try_start_4
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Got exception when handling the registration."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    move v0, v1

    .line 197
    goto :goto_1

    .line 190
    :catch_4
    move-exception v0

    .line 191
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Failed to close the reader."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 195
    :catch_5
    move-exception v0

    .line 196
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the writer."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 184
    :catch_6
    move-exception v0

    .line 185
    :try_start_7
    sget-object v4, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v5, "Got exception when handling the registration."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 186
    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 194
    :goto_4
    :try_start_9
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_5
    move v0, v1

    .line 197
    goto :goto_1

    .line 190
    :catch_7
    move-exception v0

    .line 191
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Failed to close the reader."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 195
    :catch_8
    move-exception v0

    .line 196
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the writer."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    :try_start_a
    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/proximity/registration/v1/d;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 194
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 197
    :goto_7
    throw v0

    .line 190
    :catch_9
    move-exception v1

    .line 191
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Failed to close the reader."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 195
    :catch_a
    move-exception v1

    .line 196
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the writer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 60
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->d:Landroid/app/NotificationManager;

    .line 62
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "registration_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;

    .line 70
    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "RegistrationBluetoothService started with empty registrationInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v1, Lcom/google/android/gms/auth/b/a;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Proximity feature is not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Bluetooth is not enabled on this device, trying to start it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothStartService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 98
    :try_start_0
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->b:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a(Ljava/util/UUID;)Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    move-result-object v2

    .line 99
    sget-object v3, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Socket to %s created."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a()V

    .line 109
    sget-object v3, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v4, "Connected to %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    const v3, 0x7f100160

    const v4, 0x7f10015f

    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(II)V

    .line 120
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    const v0, 0x7f10015e

    const v1, 0x7f10015d

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Failed to close the socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to create RFCOMM socket to device %s."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 110
    :catch_2
    move-exception v0

    .line 111
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Socket failed to connect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 128
    :cond_4
    const v0, 0x7f10015c

    const v1, 0x7f10015b

    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 134
    :catch_3
    move-exception v0

    .line 135
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v2, "Failed to close the socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 136
    :goto_1
    throw v0

    .line 134
    :catch_4
    move-exception v1

    .line 135
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a:Ljava/lang/String;

    const-string v3, "Failed to close the socket."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
