.class public final Lcom/google/android/location/reporting/ble/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/ble/a;


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/blescanner/compat/ScanSettings;

.field private final c:Lcom/google/android/gms/blescanner/a/c;

.field private final d:Lcom/google/android/gms/blescanner/compat/a;

.field private final e:Lcom/google/android/gms/blescanner/compat/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/location/reporting/service/y;->p:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/blescanner/compat/c;->a(Landroid/content/Context;Z)Lcom/google/android/gms/blescanner/compat/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/reporting/ble/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/blescanner/compat/a;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/blescanner/compat/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/google/android/location/reporting/ble/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/ble/c;-><init>(Lcom/google/android/location/reporting/ble/b;)V

    iput-object v0, p0, Lcom/google/android/location/reporting/ble/b;->e:Lcom/google/android/gms/blescanner/compat/k;

    .line 62
    iput-object p1, p0, Lcom/google/android/location/reporting/ble/b;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    .line 65
    sget-object v0, Lcom/google/android/location/reporting/service/y;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 66
    new-instance v4, Lcom/google/android/gms/blescanner/compat/q;

    invoke-direct {v4}, Lcom/google/android/gms/blescanner/compat/q;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reportDelayMillis must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide v0, v4, Lcom/google/android/gms/blescanner/compat/q;->d:J

    iput v6, v4, Lcom/google/android/gms/blescanner/compat/q;->c:I

    new-instance v0, Lcom/google/android/gms/blescanner/compat/ScanSettings;

    iget v1, v4, Lcom/google/android/gms/blescanner/compat/q;->a:I

    iget v2, v4, Lcom/google/android/gms/blescanner/compat/q;->b:I

    iget v3, v4, Lcom/google/android/gms/blescanner/compat/q;->c:I

    iget-wide v4, v4, Lcom/google/android/gms/blescanner/compat/q;->d:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/blescanner/compat/ScanSettings;-><init>(IIIJB)V

    iput-object v0, p0, Lcom/google/android/location/reporting/ble/b;->b:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    .line 70
    new-instance v0, Lcom/google/android/gms/blescanner/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/ble/b;->c:Lcom/google/android/gms/blescanner/a/c;

    .line 71
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 119
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanResult;->b()Lcom/google/android/gms/blescanner/compat/n;

    move-result-object v1

    iget-object v5, v1, Lcom/google/android/gms/blescanner/compat/n;->e:[B

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/reporting/ble/b;->c:Lcom/google/android/gms/blescanner/a/c;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/blescanner/a/c;->a([B)Lcom/google/android/gms/blescanner/a/b;

    move-result-object v11

    .line 125
    if-eqz v11, :cond_3

    .line 126
    invoke-virtual {v11}, Lcom/google/android/gms/blescanner/a/b;->a()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    move v1, v8

    :goto_2
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v11, v5}, Lcom/google/android/gms/blescanner/a/b;->b([B)[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanResult;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\\:|-"

    const-string v12, ""

    invoke-virtual {v2, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanResult;->c()I

    move-result v4

    .line 133
    invoke-virtual {v11, v5}, Lcom/google/android/gms/blescanner/a/b;->c([B)I

    move-result v5

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->a(Ljava/lang/String;JIILjava/lang/String;)Lcom/google/android/location/reporting/ble/ParcelableBleScan;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "GCoreUlr"

    const-string v2, "Unexpected exception thrown by BleScannerLib"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :sswitch_0
    :try_start_1
    const-string v2, "gbeaconV1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_1
    const-string v2, "gbeaconV3"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string v2, "ibeacon"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_0
    move v1, v7

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/google/android/location/reporting/service/y;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :pswitch_2
    sget-object v1, Lcom/google/android/location/reporting/service/y;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto/16 :goto_2

    .line 137
    :cond_2
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected beacon type not allowed in ULR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "ble_unexpected_type"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_3
    const-string v0, "GCoreUlr"

    const-string v1, "Unable to decode BLE beacon"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "ble_decoding_error"

    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 149
    :cond_4
    return-object v9

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0xa4180ba -> :sswitch_0
        -0xa4180b8 -> :sswitch_1
        0x5f6619ed -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()V
    .locals 8

    .prologue
    const/16 v7, 0x4c

    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    if-eqz v0, :cond_5

    .line 86
    new-instance v1, Lcom/google/android/gms/blescanner/a/d;

    invoke-direct {v1}, Lcom/google/android/gms/blescanner/a/d;-><init>()V

    .line 87
    iput-boolean v2, v1, Lcom/google/android/gms/blescanner/a/d;->c:Z

    .line 89
    sget-object v0, Lcom/google/android/location/reporting/service/y;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iput-boolean v2, v1, Lcom/google/android/gms/blescanner/a/d;->d:Z

    .line 93
    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/service/y;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v2, v1, Lcom/google/android/gms/blescanner/a/d;->b:Z

    .line 98
    :cond_1
    sget-object v0, Lcom/google/android/location/reporting/service/y;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 99
    sget-object v0, Lcom/google/android/location/reporting/service/y;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    sub-int/2addr v0, v2

    .line 101
    iget-object v3, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/blescanner/compat/a;->a(II)V

    .line 103
    iget-object v2, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, v1, Lcom/google/android/gms/blescanner/a/d;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/blescanner/a/e;->b()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/blescanner/a/e;->c()[B

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v5}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    const/16 v6, 0xe0

    invoke-virtual {v5, v6, v0, v4}, Lcom/google/android/gms/blescanner/compat/m;->a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/blescanner/a/e;->d()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/blescanner/a/e;->c()[B

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v5}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    const/16 v6, 0x550

    invoke-virtual {v5, v6, v0, v4}, Lcom/google/android/gms/blescanner/compat/m;->a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, v1, Lcom/google/android/gms/blescanner/a/d;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/blescanner/a/f;->b()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/blescanner/a/f;->c()[B

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v5}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    const-string v6, "0000FEF4-0000-1000-8000-00805F9B34FB"

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v4}, Lcom/google/android/gms/blescanner/compat/m;->a(Landroid/os/ParcelUuid;[B[B)Lcom/google/android/gms/blescanner/compat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v0, v1, Lcom/google/android/gms/blescanner/a/d;->b:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/blescanner/a/a;->b()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/blescanner/a/a;->c()[B

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v4}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    invoke-virtual {v4, v7, v0, v1}, Lcom/google/android/gms/blescanner/compat/m;->a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/ble/b;->b:Lcom/google/android/gms/blescanner/compat/ScanSettings;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/b;->e:Lcom/google/android/gms/blescanner/compat/k;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/blescanner/compat/a;->a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanSettings;Lcom/google/android/gms/blescanner/compat/k;)Z

    .line 105
    :cond_5
    return-void

    .line 103
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/blescanner/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-static {v0}, Lcom/google/android/gms/blescanner/a/a;->a(Landroid/os/ParcelUuid;)[B

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/blescanner/a/a;->b(Landroid/os/ParcelUuid;)[B

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v5}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    invoke-virtual {v5, v7, v4, v0}, Lcom/google/android/gms/blescanner/compat/m;->a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/location/reporting/ble/b;->d:Lcom/google/android/gms/blescanner/compat/a;

    iget-object v1, p0, Lcom/google/android/location/reporting/ble/b;->e:Lcom/google/android/gms/blescanner/compat/k;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/blescanner/compat/a;->a(Lcom/google/android/gms/blescanner/compat/k;)V

    .line 111
    :cond_0
    return-void
.end method
