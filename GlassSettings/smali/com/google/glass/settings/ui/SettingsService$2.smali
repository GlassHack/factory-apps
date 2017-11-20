.class Lcom/google/glass/settings/ui/SettingsService$2;
.super Landroid/os/AsyncTask;
.source "SettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SettingsService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SettingsService;

.field final synthetic val$writer:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SettingsService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SettingsService;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/settings/ui/SettingsService$2;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    iput-object p2, p0, Lcom/google/glass/settings/ui/SettingsService$2;->val$writer:Ljava/io/PrintWriter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/SettingsService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 167
    new-instance v0, Lcom/google/glass/util/Checkin;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$2;->this$0:Lcom/google/glass/settings/ui/SettingsService;

    invoke-direct {v0, v1}, Lcom/google/glass/util/Checkin;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService$2;->val$writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/Checkin;->dump(Ljava/io/PrintWriter;)V

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method
