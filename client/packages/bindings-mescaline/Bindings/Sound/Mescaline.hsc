#include <bindings.dsl.h>
#include <Mescaline/API.h>

module Bindings.Sound.Mescaline where

#strict_import

#opaque_t Engine

-- #starttype struct WorldOptions
--  #field mPassword                         , CString
--  #field mNumBuffers                       , CUInt
--  #field mMaxLogins                        , CUInt
--  #field mMaxNodes                         , CUInt
--  #field mMaxGraphDefs                     , CUInt
--  #field mMaxWireBufs                      , CUInt
--  #field mNumAudioBusChannels              , CUInt
--  #field mNumInputBusChannels              , CUInt
--  #field mNumOutputBusChannels             , CUInt
--  #field mNumControlBusChannels            , CUInt
--  #field mBufLength                        , CUInt
--  #field mRealTimeMemorySize               , CUInt
--  #field mNumSharedControls                , CInt
--  #field mSharedControls                   , Ptr CFloat
--  #field mRealTime                         , CInt
--  #field mMemoryLocking                    , CInt
--  #field mNonRealTimeCmdFilename           , CString
--  #field mNonRealTimeInputFilename         , CString
--  #field mNonRealTimeOutputFilename        , CString
--  #field mNonRealTimeOutputHeaderFormat    , CString
--  #field mNonRealTimeOutputSampleFormat    , CString
--  #field mPreferredSampleRate              , CUInt
--  #field mNumRGens                         , CUInt
--  #field mPreferredHardwareBufferFrameSize , CUInt
--  #field mLoadGraphDefs                    , CUInt
--  #field mInputStreamsEnabled              , CString
--  #field mOutputStreamsEnabled             , CString
--  #field mInDeviceName                     , CString
--  #field mVerbosity                        , CInt
--  #field mRendezvous                       , CInt
--  #field mUGensPluginPath                  , CString
--  #field mOutDeviceName                    , CString
--  #field mRestrictedPath                   , CString
-- #stoptype
-- 
-- #cinline kDefaultWorldOptions , IO (Ptr <struct WorldOptions>)

-- #opaque_t struct ReplyAddress

-- #callback ReplyFunc , Ptr <ReplyAddress> -> Ptr CChar -> CInt -> IO ()

-- | Access the data pointer in reply address.
-- #ccall ReplyAddress_ReplyData       , Ptr <ReplyAddress> -> IO (Ptr ())

-- | Create a new world.
#ccall Mescaline_Engine_new             , IO (Ptr <Engine>)
#ccall Mescaline_Engine_free            , Ptr <Engine> -> IO ()
#ccall Mescaline_Engine_start           , Ptr <Engine> -> IO ()
#ccall Mescaline_Engine_stop            , Ptr <Engine> -> IO ()

-- #ccall World_NonRealTimeSynthesis   , Ptr <World> -> Ptr <WorldOptions> -> IO ()
-- #ccall World_OpenUDP                , Ptr <World> -> CInt -> IO CInt
-- #ccall World_OpenTCP                , Ptr <World> -> CInt -> CInt -> CInt -> IO CInt
-- #ccall World_WaitForQuit            , Ptr <World> -> IO ()
-- #ccall World_SendPacket             , Ptr <World> -> CInt -> Ptr CChar -> <ReplyFunc> -> IO Bool
-- #ccall World_SendPacketWithContext  , Ptr <World> -> CInt -> Ptr CChar -> <ReplyFunc> -> Ptr () -> IO Bool

-- | Haskell print function.
-- #callback HaskellPrintFunc , Ptr CChar -> IO ()

-- | Set the global Haskell print function.
-- #ccall SetHaskellPrintFunc , <HaskellPrintFunc> -> IO ()