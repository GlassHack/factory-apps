.class final Lcom/google/android/gms/internal/ax;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ax;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
