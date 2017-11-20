.class public final Lcom/google/android/location/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/f/g;

.field public b:Ljava/util/List;

.field public c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/f/h;-><init>(J)V

    .line 35
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    .line 49
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/android/location/f/h;->c:J

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/f/h;->d:I

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/f/h;-><init>(B)V

    .line 39
    iput-wide p1, p0, Lcom/google/android/location/f/h;->c:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/f/h;->d:I

    .line 40
    return-void
.end method
