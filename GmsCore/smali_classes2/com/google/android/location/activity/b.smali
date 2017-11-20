.class public final Lcom/google/android/location/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/util/Comparator;


# instance fields
.field private final a:Ljava/util/List;

.field private b:J

.field private c:J

.field private d:Ljava/lang/Integer;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/location/activity/c;

    invoke-direct {v0}, Lcom/google/android/location/activity/c;-><init>()V

    sput-object v0, Lcom/google/android/location/activity/b;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/b;->a:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/b;->e:I

    return-void
.end method

.method static a(Ljava/util/Map;DZ)Ljava/util/List;
    .locals 7

    .prologue
    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v1, 0x4

    const/16 v3, 0x64

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 139
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 134
    new-instance v4, Lcom/google/android/gms/location/DetectedActivity;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_1
    if-eqz p3, :cond_2

    .line 137
    sget-object v0, Lcom/google/android/location/activity/b;->f:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    move-object v0, v2

    .line 139
    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 91
    .line 92
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/google/android/location/activity/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 94
    iget-object v5, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v5

    add-int/2addr v1, v5

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    move v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget v0, p0, Lcom/google/android/location/activity/b;->e:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    int-to-double v0, v1

    div-double/2addr v0, v4

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/location/activity/b;->a(Ljava/util/Map;DZ)Ljava/util/List;

    move-result-object v1

    .line 101
    iget-object v0, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 102
    new-instance v0, Lcom/google/android/gms/location/DetectedActivity;

    iget-object v3, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/google/android/location/activity/b;->e:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    :cond_3
    sget-object v0, Lcom/google/android/location/activity/b;->f:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    iget-wide v2, p0, Lcom/google/android/location/activity/b;->b:J

    iget-wide v4, p0, Lcom/google/android/location/activity/b;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    return-object v0
.end method

.method public final a(J)Lcom/google/android/location/activity/b;
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/google/android/location/activity/b;->b:J

    .line 51
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;I)Lcom/google/android/location/activity/b;
    .locals 0

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 p2, 0x0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/activity/b;->d:Ljava/lang/Integer;

    .line 83
    iput p2, p0, Lcom/google/android/location/activity/b;->e:I

    .line 84
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/location/activity/b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/location/activity/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-object p0
.end method

.method public final b(J)Lcom/google/android/location/activity/b;
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/google/android/location/activity/b;->c:J

    .line 59
    return-object p0
.end method
