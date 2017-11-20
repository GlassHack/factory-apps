.class Lcom/google/android/clockwork/stream/StreamManager$DumpContext;
.super Ljava/lang/Object;
.source "StreamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/StreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpContext"
.end annotation


# instance fields
.field private final mAppNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public final verbose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "verbose"    # Z

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->mAppNameMap:Ljava/util/Map;

    .line 1157
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->mContext:Landroid/content/Context;

    .line 1158
    iput-boolean p2, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    .line 1159
    return-void
.end method


# virtual methods
.method public getAppNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1162
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->mAppNameMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1163
    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1177
    .end local v1    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1167
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1168
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1169
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    if-nez v1, :cond_1

    .line 1171
    const-string v1, "no name found"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->mAppNameMap:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1177
    .end local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 1173
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1174
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "app not found"

    goto :goto_1
.end method
