.class final Lcom/google/glass/settings/syncable/SettingSyncAdapter$1;
.super Ljava/lang/Object;
.source "SettingSyncAdapter.java"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/syncable/SettingSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/protobuf/ProtoParser$Provider",
        "<",
        "Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/glass/settings/syncable/SettingSyncAdapter$1;->provide()Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    move-result-object v0

    return-object v0
.end method
