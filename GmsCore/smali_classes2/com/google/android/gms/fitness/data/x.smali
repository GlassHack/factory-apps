.class public final Lcom/google/android/gms/fitness/data/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/fitness/data/DataSource;

.field public b:Lcom/google/android/gms/fitness/data/DataType;

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/x;->c:J

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/x;->d:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Subscription;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/x;->c:J

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/x;->d:I

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->a(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->b(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->c(Lcom/google/android/gms/fitness/data/Subscription;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/x;->c:J

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Subscription;->d(Lcom/google/android/gms/fitness/data/Subscription;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/x;->d:I

    .line 89
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    const-string v0, "Specified data type is incompatible with specified data source"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 177
    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/x;B)V

    return-object v0

    :cond_2
    move v0, v1

    .line 172
    goto :goto_0

    :cond_3
    move v2, v1

    .line 174
    goto :goto_1
.end method
