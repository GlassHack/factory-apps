.class Lcom/google/android/gms/tagmanager/aq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/aq;->b(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PG:Ljava/lang/String;

.field final synthetic So:Lcom/google/android/gms/tagmanager/ap;

.field final synthetic Sp:J

.field final synthetic Sq:Lcom/google/android/gms/tagmanager/aq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/aq;Lcom/google/android/gms/tagmanager/ap;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sq:Lcom/google/android/gms/tagmanager/aq;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/aq$1;->So:Lcom/google/android/gms/tagmanager/ap;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sp:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/aq$1;->PG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sq:Lcom/google/android/gms/tagmanager/aq;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/aq;->a(Lcom/google/android/gms/tagmanager/aq;)Lcom/google/android/gms/tagmanager/ar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->getInstance()Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sq:Lcom/google/android/gms/tagmanager/aq;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/aq;->b(Lcom/google/android/gms/tagmanager/aq;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/aq$1;->So:Lcom/google/android/gms/tagmanager/ap;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ap;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sq:Lcom/google/android/gms/tagmanager/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->ie()Lcom/google/android/gms/tagmanager/ar;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/aq;->a(Lcom/google/android/gms/tagmanager/aq;Lcom/google/android/gms/tagmanager/ar;)Lcom/google/android/gms/tagmanager/ar;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sq:Lcom/google/android/gms/tagmanager/aq;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/aq;->a(Lcom/google/android/gms/tagmanager/aq;)Lcom/google/android/gms/tagmanager/ar;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/aq$1;->Sp:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/aq$1;->PG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/ar;->b(JLjava/lang/String;)V

    return-void
.end method
