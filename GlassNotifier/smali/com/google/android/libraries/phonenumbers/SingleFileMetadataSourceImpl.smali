.class final Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "SingleFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/android/libraries/phonenumbers/MetadataSource;


# instance fields
.field private final metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

.field private final phoneNumberMetadataFileName:Ljava/lang/String;

.field private final phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/libraries/phonenumbers/MetadataManager$SingleFileMetadataMaps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .prologue
    .line 45
    const-string v0, "/com/google/android/libraries/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "phoneNumberMetadataFileName"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .line 41
    return-void
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 50
    return-object v0
.end method
