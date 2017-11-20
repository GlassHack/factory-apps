.class Lcom/google/android/gms/tagmanager/cm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cm;->gL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tw:Lcom/google/android/gms/tagmanager/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cm$1;->Tw:Lcom/google/android/gms/tagmanager/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cm$1;->Tw:Lcom/google/android/gms/tagmanager/cm;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cm;->hz()V

    return-void
.end method
