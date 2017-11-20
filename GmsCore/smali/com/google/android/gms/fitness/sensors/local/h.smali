.class public final Lcom/google/android/gms/fitness/sensors/local/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/local/h;->a:Ljava/util/Set;

    .line 24
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    return-object v0
.end method
