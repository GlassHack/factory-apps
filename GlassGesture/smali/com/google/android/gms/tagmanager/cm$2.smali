.class Lcom/google/android/gms/tagmanager/cm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cm;->b(Lcom/google/android/gms/internal/gn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tw:Lcom/google/android/gms/tagmanager/cm;

.field final synthetic Tx:Lcom/google/android/gms/internal/gn$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cm;Lcom/google/android/gms/internal/gn$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cm$2;->Tw:Lcom/google/android/gms/tagmanager/cm;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cm$2;->Tx:Lcom/google/android/gms/internal/gn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cm$2;->Tw:Lcom/google/android/gms/tagmanager/cm;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cm$2;->Tx:Lcom/google/android/gms/internal/gn$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cm;->c(Lcom/google/android/gms/internal/gn$a;)Z

    return-void
.end method
