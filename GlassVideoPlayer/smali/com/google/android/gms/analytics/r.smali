.class final Lcom/google/android/gms/analytics/r;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/google/android/gms/analytics/r;


# instance fields
.field private a:Ljava/util/SortedSet;

.field private b:Ljava/lang/StringBuilder;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/r;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/r;->d:Lcom/google/android/gms/analytics/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Ljava/util/SortedSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->c:Z

    return-void
.end method
