.class Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
.super Ljava/lang/Object;
.source "LocaleResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/LocaleResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrammarInfo"
.end annotation


# instance fields
.field final directory:Ljava/io/File;

.field final grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field final metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field final revisionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .param p1, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "revisionName"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "metaData"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 264
    iput-object p2, p0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->revisionName:Ljava/lang/String;

    .line 265
    iput-object p3, p0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->directory:Ljava/io/File;

    .line 266
    iput-object p4, p0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 267
    return-void
.end method
