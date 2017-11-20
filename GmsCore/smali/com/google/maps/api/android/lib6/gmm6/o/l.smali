.class public final Lcom/google/maps/api/android/lib6/gmm6/o/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/b/f;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ct;


# static fields
.field public static volatile a:Z

.field public static final b:Ljava/lang/ThreadLocal;

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final i:Ljava/util/Comparator;


# instance fields
.field private final A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

.field private B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

.field private final C:Ljava/util/HashSet;

.field private final D:Ljava/util/HashSet;

.field private final E:[I

.field private final F:Ljava/util/List;

.field private G:J

.field private H:Z

.field private final I:Lcom/google/maps/api/android/lib6/gmm6/o/z;

.field private J:Z

.field private K:Landroid/graphics/Bitmap;

.field private L:Z

.field private M:F

.field private N:J

.field private volatile O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

.field private final P:Ljava/util/List;

.field private final Q:Ljava/util/List;

.field private R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

.field private volatile S:Lcom/google/maps/api/android/lib6/gmm6/o/h;

.field private volatile T:Z

.field private U:J

.field private V:I

.field private volatile W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

.field private X:Z

.field private volatile Y:F

.field private final Z:Ljava/lang/Object;

.field private aa:Z

.field private volatile ab:I

.field private ac:Z

.field private ad:I

.field private ae:J

.field private af:Ljava/util/Map;

.field private ag:Ljava/util/List;

.field private ah:Z

.field private ai:Z

.field private final aj:Lcom/google/maps/api/android/lib6/gmm6/o/f/e;

.field private volatile ak:J

.field private final al:Ljava/lang/Object;

.field private volatile g:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

.field private volatile h:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

.field private volatile k:I

.field private volatile l:I

.field private final m:Ljava/util/LinkedList;

.field private final n:Ljava/util/ArrayList;

.field private final o:Ljava/util/ArrayList;

.field private final p:Ljava/util/ArrayList;

.field private final q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

.field private final t:Landroid/content/res/Resources;

.field private final u:F

.field private v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

.field private final w:Lcom/google/maps/api/android/lib6/gmm6/o/b;

.field private final x:Lcom/google/maps/api/android/lib6/gmm6/o/b;

.field private final y:Lcom/google/maps/api/android/lib6/gmm6/o/bg;

.field private final z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->d:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->e:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f:[I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/m;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/m;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/n;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/n;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->i:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0xed00
        0xea00
        0xe200
        0x10000
    .end array-data

    :array_1
    .array-data 4
        0x8000
        0x8000
        0x8000
        0x10000
    .end array-data

    :array_2
    .array-data 4
        0x8000
        0x8000
        0x8000
        0x10000
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bl;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/x;)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->l:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->C:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->D:Ljava/util/HashSet;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->F:Ljava/util/List;

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->G:J

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/o;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/l;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->I:Lcom/google/maps/api/android/lib6/gmm6/o/z;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->P:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->Q:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->Z:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->aa:Z

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ab:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ac:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ae:J

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->af:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ak:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->al:Ljava/lang/Object;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/c;->s:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/l;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->t:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->u:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->u:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->a(F)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->u:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(F)V

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->p:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-direct {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->w:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-direct {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->x:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bg;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bg;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->y:Lcom/google/maps/api/android/lib6/gmm6/o/bg;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->w:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->w:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->y:Lcom/google/maps/api/android/lib6/gmm6/o/bg;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bz;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->c:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->a:[I

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a()I

    move-result v1

    const/high16 v3, -0x80000000

    aput v3, v2, v1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/by;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/by;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    invoke-direct {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/d/a;)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->I:Lcom/google/maps/api/android/lib6/gmm6/o/z;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/z;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->N:J

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->aj:Lcom/google/maps/api/android/lib6/gmm6/o/f/e;

    return-void

    :cond_1
    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/l;)Lcom/google/maps/api/android/lib6/gmm6/o/d/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->u()[F

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v3, 0xc11

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;IZ)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n()Lcom/google/maps/api/android/lib6/gmm6/o/q;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->C()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->M:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->M:F

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    const/16 v3, 0x1700

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->t()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    aget-object v3, v3, v2

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    aget-object v3, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->y:Lcom/google/maps/api/android/lib6/gmm6/o/bg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->F:Ljava/util/List;

    iput-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/bg;->a:Ljava/util/List;

    :cond_3
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v12, v2, :cond_5

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v12, v2, :cond_5

    iget-object v10, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/x;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    :cond_4
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(I)V

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->L:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    if-eqz v2, :cond_f

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->H:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->H:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->C:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->D:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    iget-object v10, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/x;

    array-length v13, v10

    const/4 v2, 0x0

    move v9, v2

    :goto_4
    if-ge v9, v13, :cond_d

    aget-object v2, v10, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->C:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->D:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    move-object/from16 v3, p1

    move-object v4, v12

    invoke-virtual/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;Ljava/util/HashSet;Ljava/util/HashSet;[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-le v2, v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->E:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    :goto_5
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v8, v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    if-nez p3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->L:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->c()V

    goto :goto_3

    :cond_8
    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/g;

    invoke-direct {v6}, Lcom/google/maps/api/android/lib6/gmm6/o/g;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->w()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    const/4 v5, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v9

    array-length v13, v10

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v13, :cond_c

    aget-object v14, v10, v3

    invoke-virtual {v14}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->d()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14, v2, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Lcom/google/maps/api/android/lib6/gmm6/o/g;Ljava/util/Set;)I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v14, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Ljava/util/Set;Ljava/util/Map;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    move-object v2, v4

    goto :goto_7

    :cond_c
    monitor-enter p0

    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->h()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v10

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/ce;ILcom/google/maps/api/android/lib6/gmm6/o/g;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->L:Z

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->C:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->D:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    const/4 v5, -0x1

    if-eq v8, v5, :cond_13

    :goto_9
    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/ab;->g:I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    aput-object v6, v7, v9

    const/4 v6, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x4

    aput-object v5, v7, v6

    invoke-virtual {v2, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iput-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d()V

    :cond_e
    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    const-string v4, "&copy;"

    const-string v5, "\u00a9"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->b:Ljava/lang/String;

    :cond_f
    if-nez p3, :cond_10

    if-eqz p2, :cond_17

    :cond_10
    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/q;Z)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;

    const/4 v2, 0x0

    invoke-direct {v3, v12, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bh;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->n()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->s()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ai:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iput-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->f()Z

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ai:Z

    and-int/2addr v2, v5

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ai:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    goto :goto_c

    :cond_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/ab;->h:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_15
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/ab;->j:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_16
    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/ab;->i:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->C()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x505

    if-ne v2, v4, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->U:J

    sub-long/2addr v4, v6

    const-string v6, "\nTime in current GL context: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->T:Z

    :cond_19
    const-string v4, "Renderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GL Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Renderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drawFrameInternal GL ERROR: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->T:Z

    const/16 v3, 0x505

    if-ne v2, v3, :cond_1b

    iget-object v3, v11, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v4, :cond_1b

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->F_()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->T:Z

    return-void

    :cond_1c
    move v2, v8

    goto/16 :goto_5
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/q;Z)V
    .locals 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    iget-object v6, p1, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    array-length v7, v6

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v6, v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->af:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->af:Ljava/util/Map;

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :cond_1
    invoke-virtual {v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Ljava/util/List;)Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->af:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a(Z)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a(Z)V

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ag:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b(Z)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b(Z)V

    goto :goto_4

    :cond_8
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)[I
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/p;->a:[I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->f:[I

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c:[I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->d:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->e:[I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/l;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->H:Z

    return v0
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()V
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->k:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->X:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    :goto_1
    :try_start_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->k:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Renderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set thread priority: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->l:I

    goto :goto_1
.end method

.method private k()I
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/aw;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-interface {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/aw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/aw;->k()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/aw;->k()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    :goto_1
    or-int v1, v3, v6

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, v4, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    :goto_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Z)V

    return v3

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->h:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized m()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->J:Z

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->K:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->K:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()Lcom/google/maps/api/android/lib6/gmm6/o/q;
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ac:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ac:Z

    :cond_1
    move v6, v1

    move v2, v1

    move v4, v1

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ah:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/p;->b:[I

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->b:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/s;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    move v0, v2

    move v1, v4

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    move v2, v0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    instance-of v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->I:Lcom/google/maps/api/android/lib6/gmm6/o/z;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/z;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v4

    iget v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    if-ge v4, v8, :cond_3

    move v4, v3

    :goto_4
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Z)V

    move v4, v2

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_6
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->j()Lcom/google/maps/api/android/lib6/gmm6/o/aw;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/aw;)V

    :cond_5
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V

    move v0, v1

    move v1, v3

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    instance-of v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v1

    iget v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    if-ne v1, v8, :cond_c

    move v1, v3

    :goto_7
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_8
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->af:Ljava/util/Map;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->j()Lcom/google/maps/api/android/lib6/gmm6/o/aw;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->P:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    move v0, v1

    move v1, v4

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_9

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v5

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Z)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v5

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    if-ge v5, v6, :cond_b

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ad:I

    :goto_a
    move-object v1, v0

    goto :goto_9

    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->b(Z)V

    :cond_9
    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->i:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/q;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/q;-><init>(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_b
    move-object v0, v1

    goto :goto_a

    :cond_c
    move v1, v2

    goto/16 :goto_7

    :cond_d
    move v1, v2

    goto/16 :goto_8

    :cond_e
    move v1, v2

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private o()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->V:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->V:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Z)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 4

    const/high16 v0, 0x41a80000    # 21.0f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final declared-synchronized a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->K:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)Lcom/google/maps/api/android/lib6/gmm6/o/br;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-direct {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/br;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    iput p1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->c:I

    iput p2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/c;->d:I

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ba;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/s;->a:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    invoke-direct {v0, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/s;Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->S:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/x;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/s;->a:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    invoke-direct {v0, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/s;Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/s;->c:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    invoke-direct {v0, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/s;Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/s;->b:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-direct {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/s;Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->a()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->k:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ac:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->G()Lcom/google/maps/api/android/lib6/gmm6/o/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v2

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->C()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->D()V

    :cond_4
    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->U:J

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->aj:Lcom/google/maps/api/android/lib6/gmm6/o/f/e;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->t:Landroid/content/res/Resources;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;-><init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/c/l;Lcom/google/maps/api/android/lib6/gmm6/o/bl;Lcom/google/maps/api/android/lib6/gmm6/o/f/e;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z()Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->X:Z

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->F()I

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ae;->a(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/e/c;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->t:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/e/c;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->w:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->x:Lcom/google/maps/api/android/lib6/gmm6/o/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->h()V

    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->L:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->aa:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ab:I

    :cond_7
    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->aa:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->b()V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "OpenGL error during initialization."

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->u:F

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(IIF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->i()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->M:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->u:F

    int-to-double v2, p2

    int-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->Y:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->X:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z()Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z()Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/o/c;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->t:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c;-><init>(Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/o/bo;Z)V

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->H:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/r;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/s;->b:Lcom/google/maps/api/android/lib6/gmm6/o/s;

    invoke-direct {v0, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/s;Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    instance-of v2, v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/e;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "GL object has changed since onSurfaceCreated"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "DA:Renderer"

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "OpenGL error during initialization."

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->O:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v2, v2, v7

    invoke-interface {v3, v4, v5, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    const/16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v2, 0x4100

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->j()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->l()V

    :cond_2
    invoke-interface {v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ab:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ab:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ab:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ak:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->al:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ak:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_5

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ak:J

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->e()V

    :cond_6
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->d()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->k()I

    move-result v17

    and-int/lit8 v2, v17, 0x2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_8
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->z()Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->i()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->G:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->G:J

    const/4 v2, 0x1

    move v15, v2

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->l()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->o()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->S:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    move-object/from16 v0, p0

    iput-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/o/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/h;->d()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1, v15}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->g()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j()Z

    move-result v2

    if-eqz v2, :cond_11

    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->ai:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d()Z

    move-result v3

    if-nez v3, :cond_12

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/h;->b(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->R:Lcom/google/maps/api/android/lib6/gmm6/o/h;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/h;->b:Z

    :cond_b
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->J:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->q:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->K:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v6, :cond_15

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->s:Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v5, v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_6
    invoke-static/range {v16 .. v16}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    mul-int v3, v5, v6

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v16

    move v10, v5

    move v13, v5

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->K:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->J:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->v:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->d()Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_2
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_14

    if-nez v15, :cond_14

    if-nez v17, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->N:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->N:J

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v16, v3

    goto/16 :goto_6

    :cond_16
    move v15, v2

    goto/16 :goto_3
.end method

.method public final b(Z)V
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    :try_start_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->V:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->r:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    invoke-virtual {v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->b(Lcom/google/maps/api/android/lib6/gmm6/o/d/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/d/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->b(Lcom/google/maps/api/android/lib6/gmm6/o/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->B:Lcom/google/maps/api/android/lib6/gmm6/o/d/c;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->a:Ljava/util/Vector;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->a:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/d/b;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->Y:F

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->d()V

    return-void
.end method

.method public final f()Lcom/google/maps/api/android/lib6/gmm6/o/bo;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->z:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    return-object v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/o/d/b;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->A:Lcom/google/maps/api/android/lib6/gmm6/o/d/b;

    return-object v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/o/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->W:Lcom/google/maps/api/android/lib6/gmm6/o/x;

    return-object v0
.end method

.method public final i()Lcom/google/maps/api/android/lib6/gmm6/o/c/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->j:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    return-object v0
.end method
