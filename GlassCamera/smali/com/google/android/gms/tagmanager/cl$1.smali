.class Lcom/google/android/gms/tagmanager/cl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/cl$b;Lcom/google/android/gms/tagmanager/cl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tv:Lcom/google/android/gms/tagmanager/cl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cl$1;->Tv:Lcom/google/android/gms/tagmanager/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hy()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
