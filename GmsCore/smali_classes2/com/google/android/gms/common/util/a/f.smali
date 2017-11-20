.class public final Lcom/google/android/gms/common/util/a/f;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private d:Landroid/os/Message;

.field private final e:Lcom/google/android/gms/common/util/a/e;

.field private f:Z

.field private g:[Lcom/google/android/gms/common/util/a/i;

.field private h:I

.field private i:[Lcom/google/android/gms/common/util/a/i;

.field private j:I

.field private final k:Lcom/google/android/gms/common/util/a/g;

.field private final l:Lcom/google/android/gms/common/util/a/h;

.field private m:Lcom/google/android/gms/common/util/a/c;

.field private final n:Ljava/util/HashMap;

.field private o:Lcom/google/android/gms/common/util/a/b;

.field private p:Lcom/google/android/gms/common/util/a/b;

.field private final q:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 866
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/a/f;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/util/a/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1393
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 860
    iput-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->a:Z

    .line 863
    iput-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    .line 872
    new-instance v0, Lcom/google/android/gms/common/util/a/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/a/e;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    .line 881
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    .line 890
    new-instance v0, Lcom/google/android/gms/common/util/a/g;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/util/a/g;-><init>(Lcom/google/android/gms/common/util/a/f;B)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->k:Lcom/google/android/gms/common/util/a/g;

    .line 893
    new-instance v0, Lcom/google/android/gms/common/util/a/h;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/util/a/h;-><init>(Lcom/google/android/gms/common/util/a/f;B)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->l:Lcom/google/android/gms/common/util/a/h;

    .line 924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    .line 1394
    iput-object p2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    .line 1396
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->k:Lcom/google/android/gms/common/util/a/g;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/b;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;

    .line 1397
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->l:Lcom/google/android/gms/common/util/a/h;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/b;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;

    .line 1398
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/common/util/a/c;B)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/util/a/f;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/util/a/c;)V

    return-void
.end method

.method private final a(Landroid/os/Message;)Lcom/google/android/gms/common/util/a/b;
    .locals 4

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    .line 1179
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processMsg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1183
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/common/util/a/f;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 1184
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->l:Lcom/google/android/gms/common/util/a/h;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/a;)V

    .line 1203
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    :goto_2
    return-object v0

    .line 1183
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1198
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v1, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processMsg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1186
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/util/a/b;->a(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1190
    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    .line 1191
    if-nez v0, :cond_3

    .line 1195
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/util/a/c;->b(Landroid/os/Message;)V

    goto :goto_1

    .line 1203
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/c;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/common/util/a/b;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1356
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addStateInternal: E state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/i;

    .line 1369
    if-nez v0, :cond_1

    .line 1370
    new-instance v0, Lcom/google/android/gms/common/util/a/i;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/common/util/a/i;-><init>(Lcom/google/android/gms/common/util/a/f;B)V

    .line 1371
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    if-eqz v1, :cond_2

    .line 1377
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "state already added"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_2
    iput-object p1, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    .line 1380
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    .line 1381
    iput-boolean v3, v0, Lcom/google/android/gms/common/util/a/i;->c:Z

    .line 1382
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addStateInternal: X stateInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1383
    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/b;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;

    move-result-object v0

    return-object v0
.end method

.method private final a()V
    .locals 6

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1244
    iget-boolean v2, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/util/a/c;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/util/a/c;->c(Landroid/os/Message;)V

    .line 1242
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1251
    return-void
.end method

.method private final a(I)V
    .locals 3

    .prologue
    .line 1225
    :goto_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    if-gt p1, v0, :cond_1

    .line 1226
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeEnterMethods: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/b;->b()V

    .line 1228
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/util/a/i;->c:Z

    .line 1225
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1230
    :cond_1
    return-void
.end method

.method private final a(Lcom/google/android/gms/common/util/a/a;)V
    .locals 3

    .prologue
    .line 1408
    check-cast p1, Lcom/google/android/gms/common/util/a/b;

    iput-object p1, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    .line 1409
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transitionTo: destState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1410
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/common/util/a/b;Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1033
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    iget-object v5, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    .line 1040
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/util/a/f;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    move v0, v7

    .line 1042
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    invoke-virtual {v1}, Lcom/google/android/gms/common/util/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1044
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    const-string v3, ""

    iget-object v6, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/util/a/e;->a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V

    .line 1054
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    .line 1055
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 1060
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const-string v2, "handleMessage: new destination call exit/enter"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1067
    :cond_1
    iput v8, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/i;

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->i:[Lcom/google/android/gms/common/util/a/i;

    iget v3, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    aput-object v0, v2, v3

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/google/android/gms/common/util/a/i;->c:Z

    if-eqz v2, :cond_2

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",curStateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1068
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/i;)V

    .line 1069
    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/f;->b()I

    move-result v0

    .line 1070
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/a/f;->a(I)V

    .line 1078
    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/f;->a()V

    .line 1080
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    if-eq v1, v0, :cond_7

    .line 1082
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    move-object v1, v0

    .line 1087
    goto :goto_2

    :cond_5
    move v0, v8

    .line 1040
    goto/16 :goto_0

    .line 1048
    :cond_6
    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    const-string v3, ""

    iget-object v6, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/util/a/e;->a(Lcom/google/android/gms/common/util/a/c;Landroid/os/Message;Ljava/lang/String;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;Lcom/google/android/gms/common/util/a/a;)V

    goto :goto_1

    .line 1088
    :cond_7
    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    .line 1095
    :goto_3
    if-eqz v1, :cond_a

    .line 1096
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->l:Lcom/google/android/gms/common/util/a/h;

    if-ne v1, v0, :cond_b

    .line 1100
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/c;->b()V

    .line 1101
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/c;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/f;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iput-object v9, v0, Lcom/google/android/gms/common/util/a/c;->f:Landroid/os/HandlerThread;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Lcom/google/android/gms/common/util/a/c;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iput-object v9, v0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/e;->d()V

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->i:[Lcom/google/android/gms/common/util/a/i;

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->o:Lcom/google/android/gms/common/util/a/b;

    iput-object v9, p0, Lcom/google/android/gms/common/util/a/f;->p:Lcom/google/android/gms/common/util/a/b;

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v7, p0, Lcom/google/android/gms/common/util/a/f;->a:Z

    .line 1111
    :cond_a
    :goto_4
    return-void

    .line 1102
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->k:Lcom/google/android/gms/common/util/a/g;

    if-ne v1, v0, :cond_a

    .line 1108
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/a/f;Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deferMessage: msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/util/a/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/f;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/common/util/a/f;Z)V
    .locals 0

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    return-void
.end method

.method private final a(Lcom/google/android/gms/common/util/a/i;)V
    .locals 4

    .prologue
    .line 1211
    :goto_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    .line 1214
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invokeExitMethods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1215
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/b;->c()V

    .line 1216
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/util/a/i;->c:Z

    .line 1217
    iget v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    goto :goto_0

    .line 1219
    :cond_1
    return-void
.end method

.method private final b()I
    .locals 6

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    add-int/lit8 v1, v0, 0x1

    .line 1262
    iget v0, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v1

    .line 1264
    :goto_0
    if-ltz v2, :cond_1

    .line 1265
    iget-boolean v3, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "moveTempStackToStateStack: i="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1266
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget-object v4, p0, Lcom/google/android/gms/common/util/a/f;->i:[Lcom/google/android/gms/common/util/a/i;

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    .line 1267
    add-int/lit8 v0, v0, 0x1

    .line 1268
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1271
    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    .line 1272
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v4, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1277
    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/a;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/b;)V
    .locals 3

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInitialState: initialState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/f;->o:Lcom/google/android/gms/common/util/a/b;

    return-void
.end method

.method private final c()V
    .locals 3

    .prologue
    .line 1316
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->o:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->o:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/i;

    .line 1321
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    :goto_0
    if-eqz v0, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->i:[Lcom/google/android/gms/common/util/a/i;

    iget v2, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    aput-object v0, v1, v2

    .line 1323
    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    .line 1321
    iget v1, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/util/a/f;->j:I

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/f;->h:I

    .line 1329
    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/f;->b()I

    .line 1330
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/util/a/f;)Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    return v0
.end method

.method public static synthetic d(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/e;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->e:Lcom/google/android/gms/common/util/a/e;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/util/a/f;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/i;

    move-object v3, v0

    move v0, v2

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_5

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "completeConstruction: maxDepth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    :cond_3
    new-array v0, v1, [Lcom/google/android/gms/common/util/a/i;

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->g:[Lcom/google/android/gms/common/util/a/i;

    new-array v0, v1, [Lcom/google/android/gms/common/util/a/i;

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/f;->i:[Lcom/google/android/gms/common/util/a/i;

    invoke-direct {p0}, Lcom/google/android/gms/common/util/a/f;->c()V

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const/4 v1, -0x2

    sget-object v2, Lcom/google/android/gms/common/util/a/f;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/util/a/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->c(Landroid/os/Message;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const-string v1, "completeConstruction: X"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->a:Z

    if-nez v0, :cond_2

    .line 966
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: E msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/util/a/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    .line 968
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x3

    if-ne v0, v2, :cond_3

    .line 970
    if-eqz v1, :cond_1

    .line 971
    iget v0, v1, Lcom/google/android/gms/common/util/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/android/gms/common/util/a/c;->d:I

    .line 999
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/f;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    const-string v1, "handleMessage: X"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/c;->a(Ljava/lang/String;)V

    .line 1001
    :cond_2
    return-void

    .line 973
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_6

    .line 974
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 975
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/util/a/f;->handleMessage(Landroid/os/Message;)V

    .line 976
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/common/util/a/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v1, Lcom/google/android/gms/common/util/a/c;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/google/android/gms/common/util/a/c;->b:I

    iget v3, v1, Lcom/google/android/gms/common/util/a/c;->b:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget v4, v1, Lcom/google/android/gms/common/util/a/c;->d:I

    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/a/c;->a(Lcom/google/android/gms/common/util/a/c;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/util/a/c;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->m:Lcom/google/android/gms/common/util/a/c;

    iget-object v1, v1, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_5
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 980
    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    .line 983
    const/4 v0, 0x0

    .line 984
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->f:Z

    if-eqz v1, :cond_7

    .line 986
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Landroid/os/Message;)Lcom/google/android/gms/common/util/a/b;

    move-result-object v0

    .line 996
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/b;Landroid/os/Message;)V

    goto :goto_0

    .line 987
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->f:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/f;->d:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/common/util/a/f;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_8

    .line 990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/util/a/f;->f:Z

    .line 991
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/util/a/f;->a(I)V

    goto :goto_1

    .line 993
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
