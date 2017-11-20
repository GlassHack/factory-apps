.class public Lcom/google/android/gms/auth/setup/d2d/SourceActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/auth/authzen/keyservice/g;

.field private c:[Landroid/accounts/Account;

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/app/Dialog;

.field private i:Lcom/google/android/gms/auth/setup/d2d/a/f;

.field private j:Lcom/google/android/gms/auth/setup/d2d/a/b;

.field private k:Lcom/google/android/gms/auth/setup/d2d/g;

.field private l:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->e:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->g:Z

    .line 758
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/a/b;)Lcom/google/android/gms/auth/setup/d2d/a/b;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->j:Lcom/google/android/gms/auth/setup/d2d/a/b;

    return-object p1
.end method

.method private a(Lcom/google/android/gms/auth/setup/d2d/b/e;Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;)Lcom/google/android/gms/auth/setup/d2d/b/a;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 599
    :goto_0
    return-object v0

    .line 559
    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    .line 563
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    new-instance v4, Lcom/google/android/gms/auth/setup/d2d/b/r;

    invoke-direct {v4}, Lcom/google/android/gms/auth/setup/d2d/b/r;-><init>()V

    iget-boolean v5, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x2

    :cond_1
    iput v0, v4, Lcom/google/android/gms/auth/setup/d2d/b/r;->c:I

    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    iput-boolean v0, v4, Lcom/google/android/gms/auth/setup/d2d/b/r;->a:Z

    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->g:Z

    iput-boolean v0, v4, Lcom/google/android/gms/auth/setup/d2d/b/r;->b:Z

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/h;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->a:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->c:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->b:Ljava/lang/String;

    const-string v5, "6111300"

    iput-object v5, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->e:Ljava/lang/String;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->d:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/auth/setup/d2d/b/h;->g:Lcom/google/android/gms/auth/setup/d2d/b/r;

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "typ"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "navigator.id.getAssertion"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    const-string v5, "challenge"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "source_device_signals"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/c/a/t;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 564
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 566
    invoke-interface {p2, v2}, Lcom/google/android/gms/auth/be/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b/d;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not get secret for account: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 567
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    .line 568
    goto/16 :goto_0

    .line 566
    :cond_3
    invoke-interface {p3, v0}, Lcom/google/android/gms/auth/be/b/b;->a(Lcom/google/android/gms/auth/be/b/d;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not get counter for account: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 571
    :cond_4
    new-instance v5, Lcom/google/m/b/a/d/l;

    invoke-direct {v5}, Lcom/google/m/b/a/d/l;-><init>()V

    invoke-static {v4}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/m/b/a/d/l;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/l;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/m/b/a/d/l;->a(J)Lcom/google/m/b/a/d/l;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/m/b/a/d/l;->a(I)Lcom/google/m/b/a/d/l;

    move-result-object v0

    .line 577
    new-instance v4, Lcom/google/m/b/a/d/t;

    sget-object v5, Lcom/google/m/b/a/d/u;->j:Lcom/google/m/b/a/d/u;

    invoke-virtual {v0}, Lcom/google/m/b/a/d/l;->g()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/google/m/b/a/d/t;-><init>(Lcom/google/m/b/a/d/u;[B)V

    .line 581
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v5, "device_key"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b:Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/auth/authzen/keyservice/g;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/authzen/keyservice/b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/b;->a:Lcom/google/android/gms/auth/authzen/keyservice/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/authzen/keyservice/c;->b:Ljavax/crypto/SecretKey;

    invoke-static {v4, v0, v2}, Lcom/google/m/b/a/d/s;->a(Lcom/google/m/b/a/d/t;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 593
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/a;-><init>()V

    .line 594
    iget-object v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/auth/setup/d2d/b/a;->a:Ljava/lang/String;

    .line 595
    iget-object v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    iput-object v2, v0, Lcom/google/android/gms/auth/setup/d2d/b/a;->e:[B

    .line 596
    iget-object v2, p1, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    iput-object v2, v0, Lcom/google/android/gms/auth/setup/d2d/b/a;->d:[B

    .line 597
    iput-object v3, v0, Lcom/google/android/gms/auth/setup/d2d/b/a;->b:[B

    .line 598
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/a;->c:[B

    goto/16 :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 589
    :goto_2
    sget-object v2, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v3, "Unexpected error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 590
    goto/16 :goto_0

    .line 584
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/setup/d2d/b/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 257
    aget-object v0, v0, v2

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 258
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    .line 260
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 265
    :try_start_0
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/d;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/d;-><init>()V

    .line 266
    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-object v1

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bootstrap info found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/g;)Lcom/google/android/gms/auth/setup/d2d/g;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/c;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 104
    new-instance v1, Lcom/google/android/gms/auth/be/b/f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/be/b/f;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/auth/be/b/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/be/b/a;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    iget-object v3, v0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-object v5, v3, v0

    invoke-direct {p0, v5, v2, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/b/e;Lcom/google/android/gms/auth/be/b/e;Lcom/google/android/gms/auth/be/b/b;)Lcom/google/android/gms/auth/setup/d2d/b/a;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not create assertion for account: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v0

    iget-object v7, v7, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "No assertion infos returned!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100085

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c()V

    :goto_2
    return-void

    :cond_2
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/i;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/i;-><init>()V

    sget-object v0, Lcom/google/android/gms/auth/b/a;->i:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/i;->f:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/i;->e:I

    iput v8, v1, Lcom/google/android/gms/auth/setup/d2d/b/i;->b:I

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/o;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/i;->c:Lcom/google/android/gms/auth/setup/d2d/b/o;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/auth/setup/d2d/b/a;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/setup/d2d/b/a;

    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/i;->a:[Lcom/google/android/gms/auth/setup/d2d/b/a;

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/k;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/k;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/i;

    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/k;->b:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/k;->c:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/g;->f:Lcom/google/android/gms/auth/setup/d2d/b/k;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/setup/d2d/j;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "Could not enable Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/auth/setup/d2d/l;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/c/a/ab;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Lcom/google/c/a/ab;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/google/c/a/ab;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100076

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100075

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p2, v4, v5

    aput-object v1, v4, v6

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/notification/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/notification/b;-><init>(Landroid/content/Context;)V

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/common/notification/b;->b(J)Lcom/google/android/gms/common/notification/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/notification/b;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/notification/b;->b(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/notification/b;->c(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/notification/b;->a(Z)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    const v1, 0x108008a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/notification/b;->a(I)Lcom/google/android/gms/common/notification/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/notification/b;->d(Ljava/lang/CharSequence;)Lcom/google/android/gms/common/notification/b;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/notification/a;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/common/notification/a;-><init>(Landroid/app/NotificationManager;Landroid/app/AlarmManager;)V

    const-string v0, "d2d"

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/common/notification/a;->a(Ljava/lang/String;Lcom/google/android/gms/common/notification/b;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V
    .locals 7

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/k;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p1, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/setup/d2d/k;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->i:Lcom/google/android/gms/auth/setup/d2d/a/f;

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->i:Lcom/google/android/gms/auth/setup/d2d/a/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/f;->start()V

    .line 388
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Lcom/google/android/gms/auth/setup/d2d/a/b;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->j:Lcom/google/android/gms/auth/setup/d2d/a/b;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 452
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c:[Landroid/accounts/Account;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/auth/setup/d2d/b/q;

    .line 453
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 455
    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/q;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/q;-><init>()V

    .line 456
    iput-object v2, v3, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    .line 458
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b:Lcom/google/android/gms/auth/authzen/keyservice/g;

    const-string v5, "device_key"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/authzen/keyservice/g;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/google/m/b/a/d/j;->a(Ljava/security/PublicKey;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/authzen/keyservice/h; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    aput-object v3, v1, v0

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    :goto_1
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get public key of user: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const v0, 0x7f100085

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 464
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c()V

    .line 483
    :goto_2
    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/m;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/m;-><init>()V

    .line 471
    iput v6, v0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    .line 472
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    .line 473
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/b;-><init>()V

    .line 474
    iput-object v0, v1, Lcom/google/android/gms/auth/setup/d2d/b/b;->a:Lcom/google/android/gms/auth/setup/d2d/b/m;

    .line 475
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    .line 476
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/g;->d:Lcom/google/android/gms/auth/setup/d2d/b/b;

    .line 477
    const v1, 0x7f10008a

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    .line 479
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 480
    :catch_1
    move-exception v0

    .line 481
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 461
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 538
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/g;->c:Z

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    .line 546
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 104
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    const v3, 0x7f100089

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v3, v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    const v3, 0x7f10007a

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v4, 0x3000001a

    const-string v5, "d2d"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    :try_start_1
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v2, "Unable to bring up the lockscreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_3
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v6, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private static d()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 651
    const-string v0, "/data/user/0/com.google.android.backuptransport/shared_prefs/BackupTransport.backupAccount.xml"

    .line 653
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 659
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x4000

    invoke-direct {v3, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 662
    const/4 v0, 0x0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 663
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    move-object v2, v1

    move-object v4, v1

    .line 665
    :goto_0
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 666
    const/4 v0, 0x0

    :try_start_2
    const-string v6, "name"

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 667
    const-string v0, ""

    .line 668
    const-string v7, "accountName"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "accountType"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 674
    :cond_1
    const-string v7, "accountName"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-eqz v7, :cond_3

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 680
    :goto_2
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    .line 681
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 686
    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 689
    :goto_4
    if-eqz v0, :cond_2

    const-string v3, "com.google"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 692
    :cond_2
    return-object v1

    .line 676
    :cond_3
    :try_start_4
    const-string v7, "accountType"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v4

    .line 677
    goto :goto_2

    .line 683
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v3, v1

    :goto_5
    move-object v9, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v9

    .line 684
    :goto_6
    :try_start_5
    sget-object v5, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v6, "Unable to read backup SharedPreferences file"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 686
    invoke-static {v3}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 687
    goto :goto_4

    .line 686
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    throw v0

    .line 683
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_8
    move-object v9, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v9

    goto :goto_6

    .line 686
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 683
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v4, v3

    move-object v3, v1

    goto :goto_8

    :catch_6
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto :goto_8

    :cond_4
    move-object v0, v2

    move-object v2, v4

    goto :goto_2

    :cond_5
    move v9, v4

    move-object v4, v2

    move-object v2, v0

    move v0, v9

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_3
.end method

.method static synthetic d(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Lcom/google/android/gms/auth/setup/d2d/a/f;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->i:Lcom/google/android/gms/auth/setup/d2d/a/f;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 222
    if-ne p1, v1, :cond_0

    .line 223
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 224
    iput-boolean v1, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->g:Z

    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    sget-object v0, Lcom/google/android/gms/auth/b/a;->I:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    .line 192
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const v0, 0x7f100079

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "Cannot clone restricted profile"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c:[Landroid/accounts/Account;

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c:[Landroid/accounts/Account;

    array-length v0, v0

    if-gtz v0, :cond_2

    .line 156
    const v0, 0x7f100073

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "No accounts found!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    .line 165
    const v0, 0x7f100074

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "Bluetooth not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    goto :goto_0

    .line 173
    :cond_3
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->setContentView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    new-instance v0, Lcom/google/android/gms/auth/authzen/keyservice/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/authzen/keyservice/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b:Lcom/google/android/gms/auth/authzen/keyservice/g;

    .line 180
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 183
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iput-boolean v2, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/setup/d2d/b/d;

    move-result-object v1

    .line 191
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V

    :cond_5
    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->f:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f100072

    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100078

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    new-instance v4, Lcom/google/android/gms/auth/setup/d2d/i;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gms/auth/setup/d2d/i;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/c/j/a/ad;Lcom/google/android/gms/auth/setup/d2d/b/d;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/h;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/auth/setup/d2d/h;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/c/j/a/ad;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Landroid/app/Dialog;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->h:Landroid/app/Dialog;

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    if-eqz v0, :cond_1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->k:Lcom/google/android/gms/auth/setup/d2d/g;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/g;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->i:Lcom/google/android/gms/auth/setup/d2d/a/f;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->i:Lcom/google/android/gms/auth/setup/d2d/a/f;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/f;->b()V

    .line 752
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->e:Z

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 755
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 756
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "Acquiring WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 218
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a:Ljava/lang/String;

    const-string v1, "Releasing WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->g:Z

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->l:Landroid/os/PowerManager$WakeLock;

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b()V

    .line 207
    :cond_0
    return-void
.end method
