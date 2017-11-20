.class public final Lcom/google/android/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/n/b/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/d/b;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/d/b;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object v0
.end method
