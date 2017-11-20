.class public Lcom/google/glass/timeline/AttachmentUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final context:Landroid/content/Context;

.field private uploadSession:Lcom/google/glass/net/upload/UploadSession;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/timeline/AttachmentUploader$1;

    invoke-direct {v1}, Lcom/google/glass/timeline/AttachmentUploader$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/timeline/AttachmentUploader;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 63
    iput-object p3, p0, Lcom/google/glass/timeline/AttachmentUploader;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 64
    return-void
.end method


# virtual methods
.method public abortResumableInsert()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/UploadSession;->cancel()V

    .line 204
    :cond_0
    return-void
.end method

.method public insertAttachmentToServer(Ljava/lang/String;[BLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 79
    sget-object v2, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Uploading attachment of %s bytes to server, mimeType: %s, filename: %s, source: %s"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_2

    array-length v0, p2

    .line 80
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    aput-object p1, v4, v7

    aput-object p3, v4, v5

    const/4 v0, 0x3

    aput-object p6, v4, v0

    .line 79
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;-><init>()V

    .line 86
    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 87
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setContent([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 89
    invoke-virtual {v2, p4, p5}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 90
    invoke-virtual {v2, p6}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 92
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    iget-object v3, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v3, "android_id"

    invoke-virtual {v0, v3}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 99
    :cond_0
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 101
    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/timeline/AttachmentUploader;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 102
    invoke-virtual {v0, v3, v2, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    :cond_1
    if-nez v0, :cond_3

    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 110
    :goto_1
    new-instance v1, Lcom/google/glass/timeline/UploadException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to upload."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v1

    .line 79
    goto/16 :goto_0

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    .line 116
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_5

    .line 117
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v2

    .line 118
    sget-object v3, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Successfully inserted attachment to server: %s, %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 119
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v2, v5, v7

    .line 118
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    if-eqz v2, :cond_5

    .line 121
    return-object v2

    .line 124
    :cond_5
    new-instance v1, Lcom/google/glass/timeline/UploadException;

    sget-object v2, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getResponseCode()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to upload with server response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    .line 150
    new-instance v3, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/google/glass/net/upload/SessionManager;

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 152
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v10, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/glass/timeline/AttachmentUploader;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    move-object v5, p2

    move-object/from16 v6, p6

    move-object v7, p1

    move-wide/from16 v8, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;Ljava/lang/String;JLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->init()V

    .line 157
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->isUploadSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadSession()Lcom/google/glass/net/upload/UploadSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    .line 159
    iget-object v1, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v1}, Lcom/google/glass/net/upload/UploadSession;->upload()V

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Completed the upload successfully and no response was returned! BUG!"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    iget-object v1, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v1, :cond_2

    .line 170
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Completed successfully, but the body is null! BUG!"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    sget-object v2, Lcom/google/common/base/t;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/AttachmentUploader;->insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
