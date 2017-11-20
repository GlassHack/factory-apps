.class public interface abstract Lcom/google/glass/sync/IAttachmentService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract decrementRefcount(Ljava/lang/String;)Z
.end method

.method public abstract deleteMappingsOlderThan(J)I
.end method

.method public abstract getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastModifiedMillis(Ljava/lang/String;)J
.end method

.method public abstract getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract incrementRefcount(Ljava/lang/String;)Z
.end method

.method public abstract isSynced(Ljava/lang/String;)Z
.end method

.method public abstract markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract store(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
.end method
