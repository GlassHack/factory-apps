.class Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;
.super Landroid/os/AsyncTask;
.source "ContactsDumpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/debug/ContactsDumpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/debug/ContactsDumpActivity;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/debug/ContactsDumpActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->this$0:Lcom/android/providers/contacts/debug/ContactsDumpActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/debug/ContactsDumpActivity;Lcom/android/providers/contacts/debug/ContactsDumpActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/debug/ContactsDumpActivity;
    .param p2, "x1"    # Lcom/android/providers/contacts/debug/ContactsDumpActivity$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;-><init>(Lcom/android/providers/contacts/debug/ContactsDumpActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->this$0:Lcom/android/providers/contacts/debug/ContactsDumpActivity;

    invoke-virtual {v1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/contacts/debug/DataExporter;->exportData(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->this$0:Lcom/android/providers/contacts/debug/ContactsDumpActivity;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->access$200(Lcom/android/providers/contacts/debug/ContactsDumpActivity;Landroid/net/Uri;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/debug/ContactsDumpActivity$DumpDbTask;->this$0:Lcom/android/providers/contacts/debug/ContactsDumpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/debug/ContactsDumpActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 97
    return-void
.end method
