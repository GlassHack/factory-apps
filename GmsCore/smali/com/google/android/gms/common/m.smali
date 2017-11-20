.class public Lcom/google/android/gms/common/m;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/common/m;->a:Landroid/content/Intent;

    .line 18
    return-void
.end method


# virtual methods
.method public final b()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/m;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method
