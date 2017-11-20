.class public abstract Lcom/google/maps/api/android/lib6/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/g;


# static fields
.field private static c:Lcom/google/g/a/d;


# instance fields
.field private volatile a:Z

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/b;->c:Lcom/google/g/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/b;->a:Z

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/b;->b:I

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/b;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/b;->b:I

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
