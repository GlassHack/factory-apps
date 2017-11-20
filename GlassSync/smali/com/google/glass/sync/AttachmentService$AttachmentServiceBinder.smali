.class public Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;
.super Lcom/google/glass/sync/IAttachmentService$Stub;
.source "AttachmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/AttachmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentServiceBinder"
.end annotation


# instance fields
.field private service:Lcom/google/glass/sync/AttachmentService;

.field final synthetic this$0:Lcom/google/glass/sync/AttachmentService;


# direct methods
.method private constructor <init>(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/AttachmentService;
    .param p2, "service"    # Lcom/google/glass/sync/AttachmentService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->this$0:Lcom/google/glass/sync/AttachmentService;

    invoke-direct {p0}, Lcom/google/glass/sync/IAttachmentService$Stub;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/sync/AttachmentService;
    .param p2, "x1"    # Lcom/google/glass/sync/AttachmentService;
    .param p3, "x2"    # Lcom/google/glass/sync/AttachmentService$1;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;-><init>(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/sync/AttachmentService;)V

    return-void
.end method


# virtual methods
.method public decrementRefcount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1}, Lcom/google/glass/sync/AttachmentService;->access$800(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMappingsOlderThan(J)I
    .locals 1
    .param p1, "oldestTimestampMillis"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$1200(Lcom/google/glass/sync/AttachmentService;J)I

    move-result v0

    return v0
.end method

.method public getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1}, Lcom/google/glass/sync/AttachmentService;->access$1100(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedMillis(Ljava/lang/String;)J
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1}, Lcom/google/glass/sync/AttachmentService;->access$900(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-nez p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p2}, Lcom/google/glass/sync/AttachmentService;->access$200(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$300(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getService()Lcom/google/glass/sync/AttachmentService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    return-object v0
.end method

.method public incrementRefcount(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lcom/google/glass/sync/LocalIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1}, Lcom/google/glass/sync/AttachmentService;->access$100(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSynced(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1}, Lcom/google/glass/sync/AttachmentService;->access$700(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$600(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p2}, Lcom/google/glass/sync/AttachmentService;->access$400(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$500(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public store(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/google/glass/util/FileType;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$000(Lcom/google/glass/sync/AttachmentService;Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "remoteId"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentService$AttachmentServiceBinder;->service:Lcom/google/glass/sync/AttachmentService;

    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/AttachmentService;->access$1000(Lcom/google/glass/sync/AttachmentService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
