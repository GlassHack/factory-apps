.class Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;
.super Ljava/lang/Object;
.source "ConnectivityStatusCardMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;->finish()V

    .line 105
    return-void
.end method
