.class Lcom/google/android/gms/tagmanager/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/i;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cj:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/i$1;->Cj:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gx()Lcom/google/android/gms/tagmanager/HitSender;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/i$1;->Cj:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DelayedHitSender;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/HitSender;

    move-result-object v0

    return-object v0
.end method
