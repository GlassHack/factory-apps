.class Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;
.super Ljava/lang/Object;
.source "NewPermissionsMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/NewPermissionsMenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/NewPermissionsMenuActivity;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$glasswareId:J

.field final synthetic val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/NewPermissionsMenuActivity;Lcom/google/glass/boutique/PackageManagerServiceConnection;Landroid/content/Context;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/NewPermissionsMenuActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->this$0:Lcom/google/glass/boutique/NewPermissionsMenuActivity;

    iput-object p2, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    iput-object p3, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$applicationContext:Landroid/content/Context;

    iput-wide p4, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$glasswareId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    iget-object v1, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getBoundService()Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$glasswareId:J

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;->declinePermissionsAndUninstallGlassware(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    iget-object v1, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$packageManagerServiceConnection:Lcom/google/glass/boutique/PackageManagerServiceConnection;

    iget-object v2, p0, Lcom/google/glass/boutique/NewPermissionsMenuActivity$2;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    throw v0
.end method
