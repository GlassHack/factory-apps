.class abstract Lcom/google/android/location/geofencer/service/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private volatile b:Z

.field private volatile c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/geofencer/service/e;-><init>(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/e;->b:Z

    .line 36
    iput p1, p0, Lcom/google/android/location/geofencer/service/e;->a:I

    .line 37
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/e;->d:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Lcom/google/android/gms/common/util/a/c;)V
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/location/geofencer/service/e;->a:I

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/util/a/c;->a(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/e;->c:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/e;->b:Z

    .line 58
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/e;->a()V

    .line 59
    return-void
.end method

.method protected final c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/e;->b:Z

    const-string v1, "getResultWhenAvailable called before result is set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/e;->c:Ljava/lang/Object;

    return-object v0
.end method
