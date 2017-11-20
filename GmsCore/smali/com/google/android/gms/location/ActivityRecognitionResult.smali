.class public Lcom/google/android/gms/location/ActivityRecognitionResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/a;


# instance fields
.field a:Ljava/util/List;

.field b:J

.field c:J

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/location/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V
    .locals 6

    .prologue
    .line 79
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Must have at least 1 detected activity"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 61
    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    cmp-long v0, p4, v4

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Must set times"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 62
    iput v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    .line 64
    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    .line 65
    iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    .line 66
    return-void

    :cond_1
    move v0, v2

    .line 59
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;JJB)V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    .line 221
    iput-object p1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    .line 222
    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    .line 223
    iput-wide p4, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    .line 224
    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 128
    :goto_0
    return-object v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v0, v1

    .line 116
    check-cast v0, [B

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 117
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 118
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->CREATOR:Lcom/google/android/gms/location/a;

    invoke-static {v2}, Lcom/google/android/gms/location/a;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_1
    instance-of v2, v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    if-eqz v2, :cond_2

    .line 126
    check-cast v1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/location/DetectedActivity;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityRecognitionResult [probableActivities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 238
    invoke-static {p0, p1}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;)V

    .line 239
    return-void
.end method
