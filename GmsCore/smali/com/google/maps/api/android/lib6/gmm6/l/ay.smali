.class abstract Lcom/google/maps/api/android/lib6/gmm6/l/ay;
.super Ljava/lang/Object;


# instance fields
.field final b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->f:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->g:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->h:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->b:I

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ay;-><init>(I)V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/maps/api/android/lib6/gmm6/l/av;
.end method

.method final b()Lcom/google/maps/api/android/lib6/gmm6/l/ay;
    .locals 1

    const/16 v0, 0x80

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/ay;->c:I

    return-object p0
.end method
