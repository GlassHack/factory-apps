.class final Lcom/google/android/location/activity/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/location/activity/k;

.field private final d:Z

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Z)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/activity/aj;->g:I

    .line 46
    iput-object p1, p0, Lcom/google/android/location/activity/aj;->c:Lcom/google/android/location/activity/k;

    .line 47
    iput-boolean p2, p0, Lcom/google/android/location/activity/aj;->d:Z

    .line 48
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/location/activity/aj;->a:I

    .line 49
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/google/android/location/activity/aj;->b:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/location/activity/aj;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/location/activity/aj;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/activity/aj;->f:Ljava/util/List;

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 75
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    :cond_0
    :goto_1
    move-object v4, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    if-eq v3, v10, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    int-to-double v0, v1

    const/4 v2, 0x1

    invoke-static {v5, v0, v1, v2}, Lcom/google/android/location/activity/b;->a(Ljava/util/Map;DZ)Ljava/util/List;

    move-result-object v1

    .line 80
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    return-object v0

    :cond_7
    move-object v0, v4

    goto/16 :goto_1
.end method

.method private b(Lcom/google/android/gms/location/ActivityRecognitionResult;)I
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 146
    :goto_1
    return v0

    .line 139
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;
    .locals 12

    .prologue
    const/16 v6, 0x9

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 205
    iget v0, p0, Lcom/google/android/location/activity/aj;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/aj;->g:I

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v7

    :goto_0
    if-eqz v0, :cond_1a

    .line 210
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    move v0, v8

    .line 209
    goto :goto_0

    :cond_3
    move-object v6, v0

    .line 214
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v1, 0x0

    .line 216
    iget-boolean v0, p0, Lcom/google/android/location/activity/aj;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/activity/aj;->c:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->h()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    :goto_3
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFirstResultSameAsPreviousReport: previoius="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/activity/aj;->c:Lcom/google/android/location/activity/k;

    invoke-virtual {v4}, Lcom/google/android/location/activity/k;->g()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-ne v2, v0, :cond_8

    move v0, v7

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    :cond_5
    move v0, v7

    :goto_5
    if-eqz v0, :cond_a

    .line 219
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/location/activity/aj;->a(Ljava/util/List;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    .line 221
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_6

    const-string v1, "ActivityScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Same as last. Reporting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 273
    :goto_6
    return-object v0

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/activity/aj;->c:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->g()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    move v0, v8

    goto :goto_4

    :cond_9
    move v0, v8

    goto :goto_5

    .line 223
    :cond_a
    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_19

    .line 226
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 229
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_b

    const-string v1, "ActivityScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting tilting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 239
    :goto_7
    invoke-direct {p0, v6}, Lcom/google/android/location/activity/aj;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lcom/google/android/location/activity/aj;->a:I

    if-lt v3, v1, :cond_11

    move v1, v7

    :goto_8
    iget v2, p0, Lcom/google/android/location/activity/aj;->g:I

    iget v4, p0, Lcom/google/android/location/activity/aj;->a:I

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/google/android/location/activity/aj;->b:I

    if-le v2, v4, :cond_12

    move v2, v7

    :goto_9
    if-nez v1, :cond_c

    if-eqz v2, :cond_13

    :cond_c
    move v1, v7

    :goto_a
    if-eqz v1, :cond_d

    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_d

    const-string v4, "ActivityScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Will reporting activity: consistent="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " maxAttemptsReached="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v1, :cond_14

    .line 240
    iget-object v1, p0, Lcom/google/android/location/activity/aj;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/location/activity/aj;->a(Ljava/util/List;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/google/android/location/activity/aj;->c:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/activity/k;->a(Ljava/lang/Integer;)Z

    move-result v2

    .line 244
    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v3

    if-eq v3, v10, :cond_e

    .line 250
    new-instance v3, Lcom/google/android/location/activity/b;

    invoke-direct {v3}, Lcom/google/android/location/activity/b;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/activity/b;->b(J)Lcom/google/android/location/activity/b;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/google/android/location/activity/b;->a(J)Lcom/google/android/location/activity/b;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/location/activity/b;->a(Ljava/util/List;)Lcom/google/android/location/activity/b;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {v1, v4, v5}, Lcom/google/android/location/activity/b;->a(Ljava/lang/Integer;I)Lcom/google/android/location/activity/b;

    invoke-virtual {v3}, Lcom/google/android/location/activity/b;->a()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    .line 252
    :cond_e
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_f

    const-string v3, "ActivityScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reporting activity: inconsistentWithTravelMode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " attempts="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/google/android/location/activity/aj;->g:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " finalResult="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_f
    if-nez v0, :cond_10

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :cond_10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto/16 :goto_6

    :cond_11
    move v1, v8

    .line 239
    goto/16 :goto_8

    :cond_12
    move v2, v8

    goto/16 :goto_9

    :cond_13
    move v1, v8

    goto/16 :goto_a

    .line 261
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/location/activity/aj;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_17

    .line 262
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_15

    const-string v1, "ActivityScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough history to decide: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_15
    :goto_b
    invoke-virtual {v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    if-eq v1, v11, :cond_16

    .line 268
    iget-object v1, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_16
    :goto_c
    iget-object v1, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/location/activity/aj;->a:I

    if-lt v1, v2, :cond_18

    .line 271
    iget-object v1, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    .line 264
    :cond_17
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_15

    const-string v1, "ActivityScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/activity/aj;->e:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 273
    :cond_18
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto/16 :goto_6

    :cond_19
    move-object v0, v1

    goto/16 :goto_7

    :cond_1a
    move-object v6, p1

    goto/16 :goto_2
.end method
