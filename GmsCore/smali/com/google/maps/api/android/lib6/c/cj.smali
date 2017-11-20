.class public abstract Lcom/google/maps/api/android/lib6/c/cj;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/c/co;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/c/co;

    sget v1, Lcom/google/android/gms/maps/y;->D:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/co;-><init>(IB)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/cj;->a:Lcom/google/maps/api/android/lib6/c/co;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/cj;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/e/i;)Lcom/google/maps/api/android/lib6/c/cj;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/c/cj;->a:Lcom/google/maps/api/android/lib6/c/co;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/cj;

    goto :goto_0
.end method

.method static a(Lcom/google/android/gms/maps/model/a;)Lcom/google/maps/api/android/lib6/c/cj;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/c/cj;->a:Lcom/google/maps/api/android/lib6/c/co;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a;->a()Lcom/google/android/gms/e/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/cj;->a(Lcom/google/android/gms/e/i;)Lcom/google/maps/api/android/lib6/c/cj;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/c/ck;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/c/ck;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static a(F)Lcom/google/maps/api/android/lib6/c/cl;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cl;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/cj;->a:Lcom/google/maps/api/android/lib6/c/co;

    invoke-direct {v0, v1, p0}, Lcom/google/maps/api/android/lib6/c/cl;-><init>(Lcom/google/maps/api/android/lib6/c/cj;F)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/google/maps/api/android/lib6/c/cn;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/c/cn;-><init>(Landroid/graphics/Bitmap;B)V

    return-object v0
.end method

.method public static a()Lcom/google/maps/api/android/lib6/c/co;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/c/cj;->a:Lcom/google/maps/api/android/lib6/c/co;

    return-object v0
.end method

.method public static a(I)Lcom/google/maps/api/android/lib6/c/cq;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/c/cq;-><init>(IB)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/c/cm;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/c/cm;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/c/cp;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/c/cp;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method
