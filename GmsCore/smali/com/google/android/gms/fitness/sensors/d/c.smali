.class public final Lcom/google/android/gms/fitness/sensors/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 27
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/sensors/d/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unsupported data type specified: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v1, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object p1, v1, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p0}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    sget-object v0, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/fitness/data/h;->b:I

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
