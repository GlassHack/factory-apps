.class Lcom/google/android/gms/tagmanager/cl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cl$a;


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

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cl$2;->Tv:Lcom/google/android/gms/tagmanager/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/ck;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/ck;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cl$2;->Tv:Lcom/google/android/gms/tagmanager/cl;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cl;->a(Lcom/google/android/gms/tagmanager/cl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cl$2;->Tv:Lcom/google/android/gms/tagmanager/cl;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/cl;->b(Lcom/google/android/gms/tagmanager/cl;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/ck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    return-object v0
.end method
