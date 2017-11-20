.class public final Lcom/google/android/gms/fitness/b/c/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "merge_accelerometer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "merge_activity_segments"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "merge_activity_summary"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "merge_calories_consumed"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "merge_calories_expended"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "merge_distance_delta"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "merge_heart_rate_bpm"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "merge_heart_rate_summary"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "merge_location_samples"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "merge_location_bounding_box"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "merge_power_sample"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "merge_power_summary"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "merge_speed"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "merge_speed_summary"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "merge_step_deltas"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "merge_weight"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "merge_weight_summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/fitness/b/c/q;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
