.class Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Uw:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;->Uw:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;->Uw:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ServiceManagerImpl$1;->Uw:Lcom/google/android/gms/tagmanager/ServiceManagerImpl;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->a(Lcom/google/android/gms/tagmanager/ServiceManagerImpl;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tagmanager/ServiceManagerImpl;->a(ZZ)V

    return-void
.end method
