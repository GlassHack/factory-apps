.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/h;
.super Ljava/lang/Object;


# static fields
.field private static final H:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final J:Ljava/util/Map;


# instance fields
.field private final A:I

.field private B:Z

.field private final C:I

.field private final D:Lcom/google/maps/api/android/lib6/gmm6/o/f/e;

.field private E:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final F:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

.field private final G:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

.field private final I:J

.field private K:Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

.field final a:Ljavax/microedition/khronos/opengles/GL10;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field public final c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field public final e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field public final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field public final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field public final h:[F

.field public final i:[F

.field public final j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public final k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

.field private final n:[I

.field private o:I

.field private p:I

.field private q:[I

.field private r:I

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Z

.field private v:Z

.field private w:J

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/c/l;Lcom/google/maps/api/android/lib6/gmm6/o/bl;Lcom/google/maps/api/android/lib6/gmm6/o/f/e;Landroid/content/res/Resources;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B:Z

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/l;

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/l;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/h;

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/h;-><init>([F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->E:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/q;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    const/16 v2, 0x8

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->h:[F

    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i:[F

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->F:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    invoke-direct {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->I:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->D:Lcom/google/maps/api/android/lib6/gmm6/o/f/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xbd0

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xb44

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xb71

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xb90

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x405

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x901

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1d01

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    const/16 v2, 0x100

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    const/16 v2, 0x20

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    move-object/from16 v0, p1

    instance-of v2, v0, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_0

    const/16 v2, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->u:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v2, 0xd57

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A:I

    const/16 v2, 0xd52

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    const/16 v4, 0xd53

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v4, 0x0

    aget v4, v3, v4

    const/16 v5, 0xd54

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v5, 0x0

    aget v5, v3, v5

    const/16 v6, 0xd55

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v6, 0x0

    aget v6, v3, v6

    const/16 v7, 0xd56

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v7, 0x0

    aget v7, v3, v7

    const/16 v8, 0x1f00

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f01

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3a

    const-string v12, "gl"

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "r="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    const/4 v2, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "g="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "b="

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "a="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "d="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "i="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v2, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "c="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "e="

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "t"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v4

    invoke-static {v13}, Lcom/google/maps/api/android/lib6/b/z;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd33

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->C:I

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->I:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;-><init>(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->K:Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v2, "f"

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x10000
        0x10000
        0x0
        0x10000
        0x10000
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x10000
        0x0
        0x0
        0x0
        0x0
        0x10000
        0x10000
        0x0
        0x10000
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x10000
        0x0
        0x0
        0x0
        0x10000
        0x0
        0x10000
        0x10000
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x10000
        0x10000
        0x0
        -0x10000
        -0x10000
        0x0
        0x10000
        0x10000
        0x0
        0x10000
        -0x10000
        0x0
    .end array-data

    :array_5
    .array-data 4
        -0x10000
        0x0
        0x10000
        -0x10000
        0x0
        -0x10000
        0x10000
        0x0
        0x10000
        0x10000
        0x0
        -0x10000
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x10000
        0x0
        0x0
        0x0
        0x0
        0x10000
        0x0
        0x0
        0x10000
        0x10000
        0x0
    .end array-data
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->I:J

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    aput p1, v0, v1

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;
    .locals 4

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->J:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    const v2, 0x7fffffff

    aput v2, v0, v1

    return-void
.end method

.method public final B()V
    .locals 9

    const/16 v8, 0xde1

    const/16 v7, 0xbe2

    const/16 v6, 0xbd0

    const/16 v5, 0xb90

    const/16 v4, 0xb71

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    aget v0, v0, v1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n:[I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->o:I

    aget v1, v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_2
    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    :sswitch_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_5
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_2

    :sswitch_6
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    :sswitch_7
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method public final declared-synchronized C()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->E:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final E()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->s:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xd33

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->s:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final F()I
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->t:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x846e

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->t:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->F:Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    return-object v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->u:Z

    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A:I

    return v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B:Z

    return v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->C:I

    return v0
.end method

.method public final L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    return-object v0
.end method

.method public final a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->K:Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(J)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B:Z

    return-void
.end method

.method public final a(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->v:Z

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->v:Z

    return-void
.end method

.method public final declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r:I

    aput p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->v:Z

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x:J

    return-wide v0
.end method

.method public final f()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->v:Z

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w:J

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a()V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y:Z

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z:Z

    return v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z:Z

    return-void
.end method

.method public final m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    return-object v0
.end method

.method public final n()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8037

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x80

    invoke-direct {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final y()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public final z()Lcom/google/maps/api/android/lib6/gmm6/o/bl;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    return-object v0
.end method
