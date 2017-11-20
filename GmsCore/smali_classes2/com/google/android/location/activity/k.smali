.class public Lcom/google/android/location/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/bu;
.implements Lcom/google/android/location/f/av;


# static fields
.field private static volatile D:Z


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/location/p/j;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:J

.field private K:J

.field private L:J

.field private M:J

.field private N:J

.field private O:Ljava/util/Map;

.field private final a:Lcom/google/android/location/os/at;

.field private final b:Lcom/google/android/location/activity/g;

.field private final c:Lcom/google/android/location/activity/i;

.field private d:Lcom/google/android/location/activity/bb;

.field private final e:Lcom/google/android/location/activity/a;

.field private f:J

.field private g:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private h:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private i:Lcom/google/android/location/activity/bj;

.field private j:J

.field private final k:Lcom/google/android/location/activity/m;

.field private final l:Lcom/google/android/location/activity/ah;

.field private final m:Lcom/google/android/location/activity/az;

.field private final n:Lcom/google/android/location/activity/bt;

.field private o:Ljava/util/List;

.field private p:Lcom/google/android/location/activity/a/o;

.field private q:Lcom/google/android/location/activity/a/o;

.field private final r:Lcom/google/android/location/activity/a/o;

.field private final s:Lcom/google/android/location/activity/a/o;

.field private final t:Lcom/google/android/location/activity/be;

.field private u:I

.field private v:Ljava/util/Queue;

.field private w:Ljava/util/Queue;

.field private x:Ljava/util/Queue;

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/google/android/location/os/at;->w()Lcom/google/android/location/activity/az;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/location/os/at;->x()Lcom/google/android/location/activity/bt;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/activity/k;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/az;Lcom/google/android/location/activity/bt;)V

    .line 200
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/az;Lcom/google/android/location/activity/bt;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->f:J

    .line 72
    iput-object v0, p0, Lcom/google/android/location/activity/k;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 73
    iput-object v0, p0, Lcom/google/android/location/activity/k;->h:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 74
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    iput-object v0, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    .line 75
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->j:J

    .line 77
    new-instance v0, Lcom/google/android/location/activity/ah;

    invoke-direct {v0}, Lcom/google/android/location/activity/ah;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->l:Lcom/google/android/location/activity/ah;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/google/android/location/activity/a/af;

    invoke-direct {v0}, Lcom/google/android/location/activity/a/af;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->r:Lcom/google/android/location/activity/a/o;

    .line 92
    new-instance v0, Lcom/google/android/location/activity/a/ad;

    invoke-direct {v0}, Lcom/google/android/location/activity/a/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->s:Lcom/google/android/location/activity/a/o;

    .line 103
    iput v5, p0, Lcom/google/android/location/activity/k;->u:I

    .line 107
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    .line 108
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    .line 110
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/activity/k;->y:I

    .line 114
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->z:J

    .line 115
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->A:J

    .line 116
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->B:J

    .line 132
    iput-boolean v5, p0, Lcom/google/android/location/activity/k;->E:Z

    .line 133
    iput-boolean v5, p0, Lcom/google/android/location/activity/k;->F:Z

    .line 136
    iput v4, p0, Lcom/google/android/location/activity/k;->G:I

    .line 137
    iput v5, p0, Lcom/google/android/location/activity/k;->H:I

    .line 138
    iput v5, p0, Lcom/google/android/location/activity/k;->I:I

    .line 139
    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->J:J

    .line 140
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->K:J

    .line 142
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->L:J

    .line 143
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->M:J

    .line 144
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->N:J

    .line 170
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "ActivityDetectionScheduler started in state off"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    .line 172
    sget-object v0, Lcom/google/android/location/d/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 174
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityScheduler"

    const-string v2, "offBodyDetectionAngularThreshold = %f degrees"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    new-instance v1, Lcom/google/android/location/activity/a/aa;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/activity/a/aa;-><init>(ZF)V

    iput-object v1, p0, Lcom/google/android/location/activity/k;->p:Lcom/google/android/location/activity/a/o;

    .line 178
    new-instance v0, Lcom/google/android/location/activity/a/z;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/location/activity/a/z;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->q:Lcom/google/android/location/activity/a/o;

    .line 179
    new-instance v0, Lcom/google/android/location/activity/at;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/activity/at;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    .line 180
    iput-object p2, p0, Lcom/google/android/location/activity/k;->m:Lcom/google/android/location/activity/az;

    .line 181
    iput-object p3, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    .line 182
    new-instance v0, Lcom/google/android/location/activity/be;

    invoke-direct {v0}, Lcom/google/android/location/activity/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->t:Lcom/google/android/location/activity/be;

    .line 183
    new-instance v0, Lcom/google/android/location/activity/g;

    iget-object v1, p0, Lcom/google/android/location/activity/k;->t:Lcom/google/android/location/activity/be;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/g;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->b:Lcom/google/android/location/activity/g;

    .line 185
    new-instance v0, Lcom/google/android/location/activity/i;

    iget-object v1, p0, Lcom/google/android/location/activity/k;->t:Lcom/google/android/location/activity/be;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/i;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->c:Lcom/google/android/location/activity/i;

    .line 187
    new-instance v0, Lcom/google/android/location/activity/m;

    invoke-direct {v0}, Lcom/google/android/location/activity/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->k:Lcom/google/android/location/activity/m;

    .line 188
    new-instance v0, Lcom/google/android/location/activity/a;

    invoke-direct {v0, p1}, Lcom/google/android/location/activity/a;-><init>(Lcom/google/android/location/os/at;)V

    iput-object v0, p0, Lcom/google/android/location/activity/k;->e:Lcom/google/android/location/activity/a;

    .line 189
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->J()Lcom/google/android/location/f/at;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/location/f/at;->a()Lcom/google/g/a/b/b/a;

    move-result-object v1

    sget-object v0, Lcom/google/android/location/d/a;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/activity/k;->G:I

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State loaded: lowPowerMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/google/android/location/activity/k;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensorDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/activity/k;->e(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/google/android/location/os/at;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityScheduler"

    const-string v1, "No accelerometer detected. Activity detection will be disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_4
    return-void

    .line 189
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/google/android/location/activity/k;->D:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityScheduler"

    const-string v1, "Unable to load data from disk."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/k;->a(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private I()V
    .locals 4

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->J()Lcom/google/android/location/f/at;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->bq:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 752
    const/4 v2, 0x1

    sget-boolean v3, Lcom/google/android/location/activity/k;->D:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    .line 753
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v1, v2, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 755
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/location/f/at;->b(Lcom/google/g/a/b/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Unable to save data to disk."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private J()Lcom/google/android/location/f/at;
    .locals 9

    .prologue
    .line 783
    new-instance v0, Lcom/google/android/location/f/at;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/d;->a()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v4

    sget-object v5, Lcom/google/android/location/n/a;->bq:Lcom/google/g/a/b/b/c;

    iget-object v6, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v6}, Lcom/google/android/location/os/at;->p()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v7}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/f/at;-><init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V

    .line 791
    return-object v0
.end method

.method private a(ZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x3e8

    .line 703
    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/location/activity/k;->u:I

    if-nez v0, :cond_2

    .line 704
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->z:J

    .line 712
    :goto_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/location/activity/k;->z:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->z:J

    .line 714
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 715
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->A:J

    .line 720
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 721
    iget-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->B:J

    .line 726
    :goto_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "updateEnabledState: minPeriod=%d, minTiltPeriod=%d, newClientAdded=%s, forceDetectionNow=%s, minOffBodyPeriod=%d, internalClientPeriods=%d, lowPowerPeriods=%d, offBodyPeriods=%d, externalClientCount=%d"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/location/activity/k;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-wide v4, p0, Lcom/google/android/location/activity/k;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/location/activity/k;->B:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget v4, p0, Lcom/google/android/location/activity/k;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/activity/k;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 735
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->a()V

    .line 740
    :cond_1
    :goto_3
    return-void

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 706
    iget v0, p0, Lcom/google/android/location/activity/k;->y:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->z:J

    goto/16 :goto_0

    .line 708
    :cond_3
    iget v1, p0, Lcom/google/android/location/activity/k;->y:I

    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->z:J

    goto/16 :goto_0

    .line 718
    :cond_4
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->A:J

    goto/16 :goto_1

    .line 724
    :cond_5
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->B:J

    goto/16 :goto_2

    .line 736
    :cond_6
    if-eqz p1, :cond_1

    .line 737
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "ActivityScheduler"

    const-string v1, "state.newClientAdded(%s)"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0, p2}, Lcom/google/android/location/activity/bb;->a(Z)V

    goto :goto_3
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    return v0
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 430
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Switching to low power mode"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/os/c;->aa:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/location/activity/k;->e:Lcom/google/android/location/activity/a;

    invoke-virtual {v0}, Lcom/google/android/location/activity/a;->a()V

    .line 433
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    .line 434
    if-eqz p1, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->I()V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    const-string v1, "com.google.android.location.activity.LOW_POWER_MODE_ENABLED"

    invoke-interface {v0, v1}, Lcom/google/android/location/os/at;->b(Ljava/lang/String;)V

    .line 440
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/android/location/activity/k;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/activity/k;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final B()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 540
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 541
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Alarm canceled"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 543
    iput-wide v2, p0, Lcom/google/android/location/activity/k;->f:J

    .line 545
    :cond_1
    return-void
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->p_()V

    .line 605
    return-void
.end method

.method public final D()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->n_()V

    .line 618
    return-void
.end method

.method public final E()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->o_()V

    .line 622
    return-void
.end method

.method public final F()V
    .locals 3

    .prologue
    .line 661
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addLowPowerTiltDetectionInternalClient 30"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    invoke-interface {v0}, Lcom/google/android/location/activity/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    invoke-interface {v0, p0}, Lcom/google/android/location/activity/bt;->a(Lcom/google/android/location/activity/bu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Wake up tilt detector is enabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 673
    return-void

    .line 667
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Failed to enable the wake up tilt detector."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final G()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    invoke-interface {v0}, Lcom/google/android/location/activity/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    invoke-interface {v0}, Lcom/google/android/location/activity/bt;->a()Z

    .line 685
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Wake up tilt detector is disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 689
    return-void
.end method

.method final H()Z
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/google/android/location/activity/k;->u:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/k;->w:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(D)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 387
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at sensorDelay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_6

    .line 389
    iget v0, p0, Lcom/google/android/location/activity/k;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/k;->H:I

    .line 390
    iget v0, p0, Lcom/google/android/location/activity/k;->H:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/location/activity/k;->G:I

    if-lez v0, :cond_5

    .line 391
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate too slow. Changing sensor delay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    iget v0, p0, Lcom/google/android/location/activity/k;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/location/activity/k;->G:I

    .line 394
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->I()V

    .line 402
    :cond_2
    :goto_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_8

    .line 403
    iget v0, p0, Lcom/google/android/location/activity/k;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/k;->I:I

    .line 404
    iget v0, p0, Lcom/google/android/location/activity/k;->I:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/location/activity/k;->G:I

    if-gtz v0, :cond_7

    .line 405
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate too fast. Changing sensor delay: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_3
    iget v0, p0, Lcom/google/android/location/activity/k;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/activity/k;->G:I

    .line 408
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->I()V

    .line 416
    :cond_4
    :goto_1
    return-void

    .line 396
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate too slow. consecutiveInsufficientSamplingRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/activity/k;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_6
    iput v3, p0, Lcom/google/android/location/activity/k;->H:I

    goto :goto_0

    .line 410
    :cond_7
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate too fast. consecutiveHighSamplingRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/activity/k;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_8
    iput v3, p0, Lcom/google/android/location/activity/k;->I:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 677
    invoke-direct {p0, v2, v2}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 678
    return-void
.end method

.method public final a(IIZLcom/google/android/location/p/j;)V
    .locals 3

    .prologue
    .line 645
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActivityDetectionExternalClientCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    iget v0, p0, Lcom/google/android/location/activity/k;->u:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    .line 648
    :goto_0
    iput p1, p0, Lcom/google/android/location/activity/k;->u:I

    .line 649
    iput p2, p0, Lcom/google/android/location/activity/k;->y:I

    .line 650
    iput-object p4, p0, Lcom/google/android/location/activity/k;->C:Lcom/google/android/location/p/j;

    .line 651
    invoke-direct {p0, v0, p3}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 652
    return-void

    .line 647
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/location/activity/k;->v:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 658
    return-void
.end method

.method final a(J)V
    .locals 1

    .prologue
    .line 322
    iput-wide p1, p0, Lcom/google/android/location/activity/k;->L:J

    .line 323
    return-void
.end method

.method final a(JJ)V
    .locals 7

    .prologue
    .line 529
    iput-wide p1, p0, Lcom/google/android/location/activity/k;->f:J

    .line 530
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " windowLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    iget-object v6, p0, Lcom/google/android/location/activity/k;->C:Lcom/google/android/location/p/j;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JJLcom/google/android/location/p/j;)V

    .line 536
    return-void
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 471
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;Z)V

    .line 472
    iput-object p1, p0, Lcom/google/android/location/activity/k;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 473
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 474
    iput-object p1, p0, Lcom/google/android/location/activity/k;->h:Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 482
    :cond_0
    iget-wide v4, p0, Lcom/google/android/location/activity/k;->B:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/location/d/a;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/location/activity/k;->l:Lcom/google/android/location/activity/ah;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    if-ne v4, v8, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v0

    const/16 v4, 0x3c

    if-lt v0, v4, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/google/android/location/activity/ah;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    if-nez v0, :cond_1

    iput-object p1, v3, Lcom/google/android/location/activity/ah;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    :cond_1
    iget v0, v3, Lcom/google/android/location/activity/ah;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/android/location/activity/ah;->b:I

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "LowPowerMonitor"

    const-string v4, "shouldSwitchToLowPower: high confidence still."

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v3, Lcom/google/android/location/activity/ah;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x75300

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    iget v0, v3, Lcom/google/android/location/activity/ah;->b:I

    if-lt v0, v8, :cond_6

    invoke-virtual {v3}, Lcom/google/android/location/activity/ah;->a()V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 485
    invoke-direct {p0, v1}, Lcom/google/android/location/activity/k;->e(Z)V

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0, p1}, Lcom/google/android/location/os/at;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/location/activity/k;->k:Lcom/google/android/location/activity/m;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/m;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 489
    return-void

    :cond_4
    move v0, v2

    .line 482
    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/google/android/location/activity/ah;->a()V

    :cond_6
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "LowPowerMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldSwitchToLowPower: consecutiveStills="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/google/android/location/activity/ah;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method final a(Lcom/google/android/location/activity/bb;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    .line 232
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 2

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    iget-object v1, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bj;Lcom/google/android/location/activity/bj;)V

    .line 639
    iput-object p1, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    .line 640
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->j:J

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/activity/l;)V
    .locals 2

    .prologue
    .line 816
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 818
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iput-object v0, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    .line 820
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 554
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "alarmRing, client=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/location/k/k;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->f:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 584
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 560
    iget-wide v2, p0, Lcom/google/android/location/activity/k;->f:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    sget-object v2, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    if-ne p1, v2, :cond_3

    .line 561
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityScheduler"

    const-string v3, "Alarm rings too early"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_3
    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/location/activity/k;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 566
    sget-object v0, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_1

    .line 569
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->f:J

    .line 570
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->f:J

    .line 574
    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/activity/k;->d(J)V

    goto :goto_0

    .line 577
    :cond_4
    sget-object v0, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_5

    .line 578
    iput-wide v6, p0, Lcom/google/android/location/activity/k;->f:J

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->c()V

    goto :goto_0

    .line 580
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/location/activity/k;->B()V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/k/k;J)V
    .locals 2

    .prologue
    .line 597
    sget-object v0, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_0

    .line 598
    iput-wide p2, p0, Lcom/google/android/location/activity/k;->K:J

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/k/k;)V

    .line 601
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 452
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "Disabling low power mode"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/os/c;->Z:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 454
    iget-object v0, p0, Lcom/google/android/location/activity/k;->l:Lcom/google/android/location/activity/ah;

    invoke-virtual {v0}, Lcom/google/android/location/activity/ah;->a()V

    .line 455
    iget-object v0, p0, Lcom/google/android/location/activity/k;->e:Lcom/google/android/location/activity/a;

    iget v1, p0, Lcom/google/android/location/activity/k;->G:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 456
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/activity/k;->D:Z

    .line 457
    if-eqz p1, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/google/android/location/activity/k;->I()V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    const-string v1, "com.google.android.location.activity.LOW_POWER_MODE_DISABLED"

    invoke-interface {v0, v1}, Lcom/google/android/location/os/at;->b(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 799
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Ljava/lang/Integer;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 370
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 373
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/activity/k;->j:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x15f90

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    iget-wide v4, v3, Lcom/google/android/location/activity/bj;->b:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_2

    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/location/activity/k;->i:Lcom/google/android/location/activity/bj;

    iget-object v3, v3, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    sget-object v4, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    if-ne v3, v4, :cond_3

    move v3, v2

    .line 375
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    return v2

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0

    :cond_2
    move v3, v1

    .line 373
    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    .line 375
    goto :goto_3
.end method

.method public final b()Lcom/google/android/location/activity/m;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/location/activity/k;->k:Lcom/google/android/location/activity/m;

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 692
    iget-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-direct {p0, v2, v2}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 694
    return-void
.end method

.method final b(J)V
    .locals 1

    .prologue
    .line 330
    iput-wide p1, p0, Lcom/google/android/location/activity/k;->M:J

    .line 331
    return-void
.end method

.method final b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    .line 499
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/l;

    .line 500
    invoke-interface {v0, p1}, Lcom/google/android/location/activity/l;->a_(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/location/activity/l;)V
    .locals 2

    .prologue
    .line 827
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 829
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 830
    iput-object v0, p0, Lcom/google/android/location/activity/k;->o:Ljava/util/List;

    .line 831
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/google/android/location/activity/k;->F:Z

    .line 612
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isScreenOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/activity/k;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->m_()V

    .line 614
    return-void
.end method

.method final c()Lcom/google/android/location/activity/g;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/location/activity/k;->b:Lcom/google/android/location/activity/g;

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/location/activity/k;->x:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 698
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/k;->a(ZZ)V

    .line 699
    return-void
.end method

.method final c(J)V
    .locals 1

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/google/android/location/activity/k;->N:J

    .line 339
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/google/android/location/activity/k;->E:Z

    .line 626
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPowerSaveMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/location/activity/k;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->j()V

    .line 628
    return-void
.end method

.method final d()Lcom/google/android/location/activity/i;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/location/activity/k;->c:Lcom/google/android/location/activity/i;

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 807
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->J:J

    .line 808
    return-void
.end method

.method final d(J)V
    .locals 7

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->f:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 511
    iput-wide p1, p0, Lcom/google/android/location/activity/k;->f:J

    .line 512
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    iget-object v2, p0, Lcom/google/android/location/activity/k;->C:Lcom/google/android/location/p/j;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 517
    :cond_1
    return-void
.end method

.method public final d(Z)V
    .locals 6

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 849
    :goto_0
    return-void

    .line 841
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    const-string v1, "Hardware tilt detected"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/os/c;->Y:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 843
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    new-instance v1, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    iget-object v2, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/k;->a:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V

    .line 846
    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 847
    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 848
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->i()V

    goto :goto_0
.end method

.method final e()Lcom/google/android/location/activity/bb;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/location/activity/k;->d:Lcom/google/android/location/activity/bb;

    return-object v0
.end method

.method final f()Lcom/google/android/location/activity/a;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/location/activity/k;->e:Lcom/google/android/location/activity/a;

    return-object v0
.end method

.method final g()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/location/activity/k;->g:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method final h()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/location/activity/k;->h:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method final i()Lcom/google/android/location/activity/az;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/location/activity/k;->m:Lcom/google/android/location/activity/az;

    return-object v0
.end method

.method final j()Lcom/google/android/location/activity/bt;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/location/activity/k;->n:Lcom/google/android/location/activity/bt;

    return-object v0
.end method

.method final k()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/location/activity/k;->q:Lcom/google/android/location/activity/a/o;

    return-object v0
.end method

.method final l()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/location/activity/k;->p:Lcom/google/android/location/activity/a/o;

    return-object v0
.end method

.method final m()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/location/activity/k;->r:Lcom/google/android/location/activity/a/o;

    return-object v0
.end method

.method final n()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/location/activity/k;->s:Lcom/google/android/location/activity/a/o;

    return-object v0
.end method

.method final o()J
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/android/location/activity/k;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/google/android/location/d/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/k;->z:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 275
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->z:J

    goto :goto_0
.end method

.method final p()J
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/android/location/activity/k;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/google/android/location/d/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/k;->A:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 284
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->A:J

    goto :goto_0
.end method

.method final q()J
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/location/activity/k;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/google/android/location/d/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/activity/k;->B:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 293
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->B:J

    goto :goto_0
.end method

.method final r()Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/location/activity/k;->C:Lcom/google/android/location/p/j;

    return-object v0
.end method

.method final s()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/location/activity/k;->G:I

    return v0
.end method

.method final t()J
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->J:J

    return-wide v0
.end method

.method final u()V
    .locals 2

    .prologue
    .line 310
    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, Lcom/google/android/location/activity/k;->J:J

    .line 311
    return-void
.end method

.method final v()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->K:J

    return-wide v0
.end method

.method final w()J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->L:J

    return-wide v0
.end method

.method final x()J
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->M:J

    return-wide v0
.end method

.method final y()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/android/location/activity/k;->N:J

    return-wide v0
.end method

.method final z()Ljava/util/Map;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/location/activity/k;->O:Ljava/util/Map;

    return-object v0
.end method
