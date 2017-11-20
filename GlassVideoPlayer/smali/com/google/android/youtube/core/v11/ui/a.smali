.class final Lcom/google/android/youtube/core/v11/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/v11/ui/a;->a:Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/v11/ui/a;->a:Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;->a(Lcom/google/android/youtube/core/v11/ui/ActionBarWorkspace;I)V

    .line 64
    return-void
.end method

.method public final onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
