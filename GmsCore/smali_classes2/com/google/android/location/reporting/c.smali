.class public final Lcom/google/android/location/reporting/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v3, 0x5

    const-string v4, "NoAccount"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/c;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/LocationStatus;J)Lcom/google/android/ulr/ApiMetadata;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationStatus;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/reporting/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationStatus;->b()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/location/reporting/c;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/google/android/ulr/ApiLocationStatus;

    invoke-direct {v3, v0, v2}, Lcom/google/android/ulr/ApiLocationStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/google/android/ulr/ApiMetadata;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ulr/ApiMetadata;-><init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/places/PlaceReport;Ljava/lang/String;J)Lcom/google/android/ulr/ApiMetadata;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v4, Lcom/google/android/ulr/ApiPlaceReport;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceReport;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceReport;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, p1, v2}, Lcom/google/android/ulr/ApiPlaceReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/android/ulr/ApiMetadata;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ulr/ApiMetadata;-><init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/location/reporting/config/c;)Lcom/google/android/ulr/ApiMetadata;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/location/reporting/config/c;->b:Lcom/google/android/location/reporting/config/d;

    sget-object v1, Lcom/google/android/location/reporting/d;->a:[I

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 80
    :goto_0
    new-instance v1, Lcom/google/android/ulr/ApiActivationChange;

    invoke-direct {v1, v0}, Lcom/google/android/ulr/ApiActivationChange;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/google/android/ulr/ApiMetadata;

    iget-wide v4, p0, Lcom/google/android/location/reporting/config/c;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ulr/ApiMetadata;-><init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V

    return-object v0

    .line 79
    :pswitch_0
    const-string v0, "inactivated"

    goto :goto_0

    :pswitch_1
    const-string v0, "activated"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/google/android/ulr/ApiRate;)Lcom/google/android/ulr/ApiMetadata;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/google/android/ulr/ApiMetadata;

    invoke-virtual {p0}, Lcom/google/android/ulr/ApiRate;->c()Ljava/lang/Long;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ulr/ApiMetadata;-><init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;J)Lcom/google/android/ulr/ApiMetadata;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {p0}, Lcom/google/android/location/reporting/ble/ParcelableBleScan;->a(Ljava/util/List;)Lcom/google/android/ulr/ApiBleScanReport;

    move-result-object v2

    .line 97
    new-instance v0, Lcom/google/android/ulr/ApiMetadata;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ulr/ApiMetadata;-><init>(Lcom/google/android/ulr/ApiActivationChange;Lcom/google/android/ulr/ApiBleScanReport;Lcom/google/android/ulr/ApiLocationStatus;Lcom/google/android/ulr/ApiPlaceReport;Lcom/google/android/ulr/ApiRate;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    .line 141
    const-string v0, "indeterminate"

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    const-string v0, "successful"

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v0, "unknown"

    goto :goto_0

    .line 127
    :pswitch_2
    const-string v0, "timedOutOnScan"

    goto :goto_0

    .line 129
    :pswitch_3
    const-string v0, "noInfoInDatabase"

    goto :goto_0

    .line 131
    :pswitch_4
    const-string v0, "invalidScan"

    goto :goto_0

    .line 133
    :pswitch_5
    const-string v0, "unableToQueryDatabase"

    goto :goto_0

    .line 135
    :pswitch_6
    const-string v0, "scansDisabledInSettings"

    goto :goto_0

    .line 137
    :pswitch_7
    const-string v0, "locationDisabledInSettings"

    goto :goto_0

    .line 139
    :pswitch_8
    const-string v0, "inProgress"

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
