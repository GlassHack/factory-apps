.class public Lcom/google/glass/timeline/AttachmentUploader;
.super Ljava/lang/Object;
.source "AttachmentUploader.java"


# static fields
.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;",
            ">;"
        }
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authUtils"    # Lcom/google/glass/auth/AuthUtils;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

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
    .locals 15
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "creationTime"    # J
    .param p6, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v10, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Uploading attachment of %s bytes to server, mimeType: %s, filename: %s, source: %s"

    const/4 v9, 0x4

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v9, v0

    .line 80
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object p1, v12, v9

    const/4 v9, 0x2

    aput-object p3, v12, v9

    const/4 v9, 0x3

    aput-object p6, v12, v9

    .line 79
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "attachmentFile":Ljava/io/File;
    new-instance v6, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;-><init>()V

    .line 86
    .local v6, "request":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 87
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setContent([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 89
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 90
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 92
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v9

    if-nez v9, :cond_0

    .line 93
    new-instance v9, Lcom/google/glass/util/SettingsSecure;

    iget-object v10, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v10, "android_id"

    invoke-virtual {v9, v10}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual {v6, v9}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;

    .line 99
    :cond_0
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    .line 101
    .local v5, "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v9, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v10, Lcom/google/glass/timeline/AttachmentUploader;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 102
    invoke-virtual {v5, v9, v6, v10}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v7

    .line 106
    .local v7, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_4

    .line 107
    :cond_1
    if-nez v7, :cond_3

    sget-object v4, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 110
    .local v4, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_1
    new-instance v9, Lcom/google/glass/timeline/UploadException;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x17

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed to upload."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-direct {v9, v4, v0, v10}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 79
    .end local v2    # "attachmentFile":Ljava/io/File;
    .end local v4    # "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .end local v5    # "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v6    # "request":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .end local v7    # "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;>;"
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 109
    .restart local v2    # "attachmentFile":Ljava/io/File;
    .restart local v5    # "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .restart local v6    # "request":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertRequest;
    .restart local v7    # "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;>;"
    :cond_3
    invoke-virtual {v7}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v4

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v7}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;

    .line 116
    .local v8, "responseProto":Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;
    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getResponseCode()I

    move-result v9

    if-nez v9, :cond_5

    .line 117
    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "attachmentId":Ljava/lang/String;
    sget-object v9, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Successfully inserted attachment to server: %s, %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 119
    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getAttachmentId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    .line 118
    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    if-eqz v3, :cond_5

    .line 121
    return-object v3

    .line 124
    .end local v3    # "attachmentId":Ljava/lang/String;
    :cond_5
    new-instance v9, Lcom/google/glass/timeline/UploadException;

    sget-object v10, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 126
    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentInsertResponse;->getResponseCode()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x3c

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " failed to upload with server response code "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v9, v10, v0, v11}, Lcom/google/glass/timeline/UploadException;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    throw v9
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 14
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "pathToUpload"    # Ljava/lang/String;
    .param p3, "lastModifiedMillis"    # J
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "streamToUpload"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    .line 150
    .local v1, "dispatcher":Lcom/google/glass/net/HttpRequestDispatcher;
    new-instance v3, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 151
    .local v3, "tracker":Lcom/google/glass/net/upload/SessionTracker;
    new-instance v0, Lcom/google/glass/net/upload/SessionManager;

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 152
    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v10, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/glass/timeline/AttachmentUploader;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object v7, p1

    move-wide/from16 v8, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/lang/String;Ljava/io/FileInputStream;Ljava/lang/String;JLandroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 155
    .local v0, "manager":Lcom/google/glass/net/upload/SessionManager;
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->init()V

    .line 157
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->isUploadSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadSession()Lcom/google/glass/net/upload/UploadSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    .line 159
    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v2}, Lcom/google/glass/net/upload/UploadSession;->upload()V

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v13

    .line 164
    .local v13, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v13, :cond_1

    .line 165
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Completed the upload successfully and no response was returned! BUG!"

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_1
    iget-object v2, v13, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v2, :cond_2

    .line 170
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Completed successfully, but the body is null! BUG!"

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v4, v13, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

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
